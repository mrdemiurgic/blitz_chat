import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'dart:async';

import '../models/peer_event.dart';

class Peer {
  final String _id;
  final Map<String, dynamic> _configuration;
  final StreamController<PeerEvent> _controller = StreamController.broadcast();
  late final RTCPeerConnection _peer;

  Peer({required String id, required Map<String, dynamic> iceConfig})
      : _id = id,
        _configuration = iceConfig;

  Future<void> init(MediaStream stream) async {
    _peer = await createPeerConnection(_configuration);
    // await addLocalStream(stream);
    await _peer.addStream(stream);
    _peer.onIceCandidate = _onIceCandidate;
    _peer.onAddStream = _onAddStream;

    _peer.onConnectionState = (RTCPeerConnectionState state) {
      print('onConnectionState: $state');
    };

    _peer.onIceConnectionState = (RTCIceConnectionState state) {
      print('onIceConnectionState: $state');
    };
  }

  bool get isClosed => (_peer.connectionState ==
          RTCIceConnectionState.RTCIceConnectionStateClosed ||
      _peer.connectionState ==
          RTCIceConnectionState.RTCIceConnectionStateDisconnected);

  Stream<PeerEvent> get stream => _controller.stream;

  Future<void> addCandidate(RTCIceCandidate candidate) async {
    if (!isClosed) {
      _peer.addCandidate(candidate);
    }
  }

  Future<void> addLocalStream(MediaStream stream) async {
    if (!isClosed) {
      stream.getTracks().forEach((track) => _peer.addTrack(track));
    }
  }

  Future<RTCSessionDescription> createOffer() async {
    if (!isClosed) {
      final offer = await _peer.createOffer();
      await _peer.setLocalDescription(offer);
      return offer;
    } else {
      throw ("Trying to create an offer with a peer that already closed.");
    }
  }

  Future<RTCSessionDescription?> addRemoteSDP(RTCSessionDescription sdp) async {
    if (!isClosed) {
      await _peer.setRemoteDescription(sdp);
      if (sdp.type == 'offer') {
        final answer = await _peer.createAnswer();
        await _peer.setLocalDescription(answer);
        return answer;
      }
    }
    return null;
  }

  void _onIceCandidate(RTCIceCandidate iceCandidate) async {
    if (!_controller.isClosed) {
      _controller.add(NewIceCandidate(peerId: _id, iceCandidate: iceCandidate));
    }
  }

  void _onAddStream(MediaStream stream) {
    if (!_controller.isClosed) {
      _controller.add(NewMediaStream(peerId: _id, stream: stream));
    }
  }

  Future<void> dispose() async {
    // _peer.getRemoteStreams().forEach((stream) {
    //   stream.getTracks().forEach((track) {
    //     track.stop();
    //   });
    // });

    await _peer.close();
    await _controller.close();
  }
}
