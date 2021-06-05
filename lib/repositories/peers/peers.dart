import 'dart:async';
import 'package:flutter_webrtc/flutter_webrtc.dart';

import 'models/peer_event.dart';
import 'core/peer.dart';

export 'models/peer_event.dart';

class PeersRepository {
  final Map<String, Peer> _peers = {};

  PeersRepository() {
    print("PeersRepository constructor");
  }

  StreamController<PeerEvent> _controller = StreamController.broadcast();

  Stream<PeerEvent> get stream => _controller.stream;

  Future<void> createPeer(
      {required String id,
      required Map<String, dynamic> iceConfig,
      required MediaStream localStream}) async {
    if (!_peers.containsKey(id)) {
      final newPeer = Peer(id: id, iceConfig: iceConfig);
      await newPeer.init(localStream);
      newPeer.stream.listen((event) => _controller.add(event));
      _peers[id] = newPeer;
    } else {
      throw ("Trying to add new peer that already exists. peer: $id");
    }
  }

  Future<void> createPeers(
      {required List<String> ids,
      required Map<String, dynamic> iceConfig,
      required MediaStream localStream}) async {
    for (final id in ids) {
      await createPeer(id: id, iceConfig: iceConfig, localStream: localStream);
    }
  }

  void addCandidate(
      {required String id, required RTCIceCandidate iceCandidate}) {
    if (_peers.containsKey(id)) {
      _peers[id]!.addCandidate(iceCandidate);
    } else {
      throw ("Trying to add an ice candidate to a peer that doesn't exist: $id");
    }
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

  Future<RTCSessionDescription?> createOffer({required String id}) async {
    if (_peers.containsKey(id)) {
      final offer = await _peers[id]!.createOffer();
      return offer;
    } else {
      throw ("Trying to create an offer from a peer that doesn't exist: $id");
    }
  }

  Future<void> disposePeer({required String id}) async {
    final deletedPeer = _peers.remove(id);
    await deletedPeer?.dispose();
  }

  disposeAllPeers() async {
    _peers.forEach((id, peer) {
      _peers[id]?.dispose();
    });

    _peers.clear();
  }

  void dispose() {
    _controller.close();
    disposeAllPeers();
  }
}
