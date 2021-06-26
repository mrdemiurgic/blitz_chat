import 'package:blitz_chat/blocs/local_video/local_video.dart';
import 'package:bloc/bloc.dart';
import '../../repositories/signaler/signaler.dart';
import '../../repositories/peers/peers.dart';
import 'remote_videos_event.dart';
import 'remote_video_state.dart';
import 'dart:async';

export 'remote_video_state.dart';

class RemoteVideosBloc
    extends Bloc<RemoteVideosEvent, Map<String, RemoteVideoState>> {
  final SignalerRepository signaler;
  final PeersRepository peers;
  final LocalVideoBloc localVideoBloc;

  late final StreamSubscription<SignalerEvent> signalerSub;
  late final StreamSubscription<PeerEvent> peersSub;
  late final StreamSubscription<LocalVideoState> localVideoSub;

  RemoteVideosBloc(
      {required this.signaler,
      required this.peers,
      required this.localVideoBloc})
      : super({}) {
    print("RemoteVideosBloc constructor");
    signalerSub = _getSignalerSubscription(signaler);
    peersSub = _getPeersSubscription(peers);
    localVideoSub = _getLocalVideoSubscription(localVideoBloc);
  }

  @override
  Stream<Map<String, RemoteVideoState>> mapEventToState(
      RemoteVideosEvent event) {
    return event.when(newPeer: (id) async* {
      print("new peer connecting!! $id");
      final newState = {...state};
      newState[id] = InitConnection();
      yield newState;
    }, newStream: (id, stream) async* {
      print("obtained remote stream!! $id");
      final newState = {...state};
      newState[id] = EstablishedConnection(stream: stream);
      yield newState;
    }, disposeStream: (id) async* {
      final newState = {...state};
      newState.remove(id);
      yield newState;
    }, disposeAllStreams: () async* {
      yield {};
    });
  }

  @override
  Future<void> close() async {
    peersSub.cancel();
    signalerSub.cancel();
    super.close();
  }

  StreamSubscription<LocalVideoState> _getLocalVideoSubscription(
      LocalVideoBloc localVideo) {
    return localVideo.stream.listen((LocalVideoState state) {
      state.when(streamOpen: (stream) {
        // if iceConfig and ids are set in local storage, create peers and send ready signal
      }, streamClosed: () {
        // simply do nothing...
      }, streamError: (error) {
        // simply do nothing...
      });
    });
  }

  StreamSubscription<SignalerEvent> _getSignalerSubscription(
      SignalerRepository signaler) {
    return signaler.stream.listen((SignalerEvent event) {
      print('remote videos signaler event: $event');
      event.maybeWhen(
          welcome: (name, peersList, iceConfig) async {
            peers.disposeAllPeers();
            if (peersList.length > 0 && iceConfig != null) {
              final localStreamState = localVideoBloc.state;
              if (localStreamState is StreamOpen) {
                final offers = await peers.createPeers(
                    ids: peersList,
                    iceConfig: iceConfig,
                    localStream: localStreamState.localStream);
                offers.forEach((offer) {
                  signaler.sendSDP(OutgoingSDP(to: offer.id, sdp: offer.sdp));
                });
                // signaler.sendReadySignal();
                // send SDP offers here
              } else {
                // save iceConfig and ids to local state awaiting localStream to be ready
              }
            }
          },
          incomingSDP: (sdp, from, iceConfig) async {
            if (sdp.type == 'offer' && iceConfig != null) {
              final localStreamState = localVideoBloc.state;
              if (localStreamState is StreamOpen) {
                final answer = await peers.createPeerWithOffer(
                    offer: Offer(id: from, sdp: sdp),
                    iceConfig: iceConfig,
                    localStream: localStreamState.localStream);
                signaler.sendSDP(OutgoingSDP(to: answer.id, sdp: answer.sdp));
              }
            } else {
              await peers.addRemoteSDP(id: from, sdp: sdp);
            }
          },
          incomingIceCandidate: (iceCandidate, from) {
            peers.addCandidate(iceCandidate: iceCandidate, id: from);
          },
          bye: () {
            peers.disposeAllPeers();
            add(DisposeAllStreams());
          },
          byePeer: (id) {
            peers.disposePeer(id: id);
            add(DisposeStream(id: id));
          },
          orElse: () {});
    });
  }

  StreamSubscription<PeerEvent> _getPeersSubscription(PeersRepository peers) {
    return peers.stream.listen((PeerEvent event) {
      event.when(newIceCandidate: (id, iceCandidate) {
        signaler.sendIceCandidate(
            OutgoingIceCandidate(iceCandidate: iceCandidate, to: id));
      }, newMediaStream: (id, stream) {
        add(NewStream(id: id, stream: stream));
      });
    });
  }
}
