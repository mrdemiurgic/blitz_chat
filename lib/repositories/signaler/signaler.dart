import 'models/signaler_event.dart';
import 'core/signaler_socketio.dart';
import 'dart:async';

export 'models/signaler_event.dart';

class SignalerRepository {
  late final SignalerSocketIO _signaler;
  late final StreamController<SignalerEvent> _controller;

  String? _joinWhenReady;
  String? _currentRoom;

  SignalerRepository(String signalerURL) {
    print("SignalerRepository constructor");

    _signaler = SignalerSocketIO(signalerURL);
    _controller =
        StreamController.broadcast(onListen: _onListen, onCancel: _onCancel);
  }

  Stream<SignalerEvent> get stream => _controller.stream;
  String? get roomName => _currentRoom;

  void _initListeners() {
    _signaler.onConnect((_) {
      _controller.add(Connected());
      if (_joinWhenReady != null) {
        join(roomName: _joinWhenReady!);
      }
    });

    _signaler.onDisconnect((_) {
      _controller.add(Disconnected());
    });

    _signaler.onConnectError((String message) {
      _controller.add(Disconnected());
    });

    _signaler.onWelcome((Welcome welcome) {
      _controller.add(welcome);
    });
    _signaler.onNewPeer((NewPeer newPeer) {
      _controller.add(newPeer);
    });
    _signaler.onBlitzError((BlitzError error) {
      _controller.add(error);
    });
    _signaler.onIceCandidate((IncomingIceCandidate iceCandidate) {
      _controller.add(iceCandidate);
    });
    _signaler.onSDP((IncomingSDP sdp) {
      _controller.add(sdp);
    });
    _signaler.onBye((Bye bye) {
      _currentRoom = null;
      _joinWhenReady = null;

      _controller.add(bye);
    });
    _signaler.onByePeer((ByePeer byePeer) {
      _controller.add(byePeer);
    });
  }

  void _onListen() {
    _initListeners();
    _signaler.connect();
  }

  void _onCancel() {
    dispose();
  }

  void dispose() => _signaler.close();

  void join({required String roomName}) {
    if (!_signaler.connected) {
      _joinWhenReady = roomName;
    } else {
      _signaler.join(roomName: roomName);
      _currentRoom = roomName;
    }
  }

  void leave() {
    if (_signaler.connected) {
      _signaler.leave();
    }
  }

  void sendReadySignal() {
    _signaler.sendReadySignal();
  }

  void sendSDP(OutgoingSDP sdp) {
    _signaler.sendSDP(sdp);
  }

  void sendIceCandidate(OutgoingIceCandidate iceCandidate) {
    _signaler.sendIceCandidate(iceCandidate);
  }
}
