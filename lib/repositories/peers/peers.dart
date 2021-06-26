import 'dart:async';
import 'package:flutter_webrtc/flutter_webrtc.dart';

import 'package:rxdart/rxdart.dart';

import 'models/session_description.dart';
import 'models/peer_event.dart';
import 'core/peer.dart';

export 'models/peer_event.dart';
export 'models/session_description.dart';

class PeersRepository {
  final Map<String, Peer> _peers = {};
  final Map<String, ReplaySubject<RTCIceCandidate>> _iceCandidates = {};

  PeersRepository() {
    print("PeersRepository constructor");
  }

  StreamController<PeerEvent> _controller = StreamController.broadcast();

  Stream<PeerEvent> get stream => _controller.stream;

  Future<Offer> _createPeer(
      {required String id,
      required Map<String, dynamic> iceConfig,
      required MediaStream localStream}) async {
    if (!_peers.containsKey(id)) {
      final newPeer = Peer(id: id, iceConfig: iceConfig);
      await newPeer.init(localStream);
      newPeer.stream.listen((event) => _controller.add(event));
      _peers[id] = newPeer;

      if (!_iceCandidates.containsKey(id)) {
        _iceCandidates[id] = ReplaySubject<RTCIceCandidate>();
      }

      _iceCandidates[id]!.listen((iceCandidate) {
        print(iceCandidate);
        newPeer.addCandidate(iceCandidate);
      });

      final offer = await newPeer.createOffer();
      return Offer(id: id, sdp: offer);
    } else {
      throw ("Trying to add new peer that already exists. peer: $id");
    }
  }

  Future<Answer> createPeerWithOffer(
      {required Offer offer,
      required Map<String, dynamic> iceConfig,
      required MediaStream localStream}) async {
    final newPeer = Peer(id: offer.id, iceConfig: iceConfig);
    await newPeer.init(localStream);
    newPeer.stream.listen((event) => _controller.add(event));
    if (!_iceCandidates.containsKey(offer.id)) {
      _iceCandidates[offer.id] = ReplaySubject<RTCIceCandidate>();
    }
    _iceCandidates[offer.id]!.listen((iceCandidate) {
      newPeer.addCandidate(iceCandidate);
    });
    final answer = await newPeer.addRemoteSDP(offer.sdp);
    if (answer != null) {
      return Answer(id: offer.id, sdp: answer);
    } else {
      throw ("Failed to make an answer sdp. Peer: ${offer.id}");
    }
  }

  Future<List<Offer>> createPeers(
      {required List<String> ids,
      required Map<String, dynamic> iceConfig,
      required MediaStream localStream}) {
    return Future.wait(ids.map((id) async {
      final offer = await _createPeer(
          id: id, iceConfig: iceConfig, localStream: localStream);
      return offer;
    }));
  }

  void addCandidate(
      {required String id, required RTCIceCandidate iceCandidate}) {
    if (!_iceCandidates.containsKey(id)) {
      _iceCandidates[id] = ReplaySubject();
    }
    _iceCandidates[id]!.add(iceCandidate);
  }

  Future<RTCSessionDescription?> addRemoteSDP(
      {required String id, required RTCSessionDescription sdp}) async {
    if (_peers.containsKey(id)) {
      final answer = await _peers[id]!.addRemoteSDP(sdp);
      return answer;
    } else {
      throw ("Trying to add a session description to a peer that doesn't exist: $id");
    }
  }

  Future<void> disposePeer({required String id}) async {
    final deletedPeer = _peers.remove(id);
    final deletedIceStream = _iceCandidates.remove(id);
    await deletedPeer?.dispose();
    await deletedIceStream?.close();
  }

  disposeAllPeers() {
    _peers.forEach((id, peer) {
      _peers[id]?.dispose();
    });

    _iceCandidates.forEach((id, iceCandidateSubject) {
      _iceCandidates[id]?.close();
    });

    _iceCandidates.clear();
    _peers.clear();
  }

  void dispose() {
    _controller.close();
    disposeAllPeers();
  }
}
