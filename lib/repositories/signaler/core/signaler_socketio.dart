import 'package:socket_io_client/socket_io_client.dart';
import '../models/signaler_event.dart';

class SignalerSocketIO {
  final Socket _socket;

  static Socket _init(String url) {
    final newSocket = io(
        url,
        OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .enableForceNew()
            .build());

    return newSocket;
  }

  bool get connected => _socket.connected;

  SignalerSocketIO(String url) : this._socket = _init(url);

  void connect() {
    _socket.connect();
  }

  void close() {
    _socket.close();
  }

  void onConnect(dynamic Function(dynamic) func) {
    _socket.onConnect(func);
  }

  void onDisconnect(dynamic Function(dynamic) func) {
    _socket.onDisconnect(func);
  }

  void onConnectError(dynamic Function(String) func) {
    _socket.onConnectError((_) {
      func('Could not connect');
    });
    // this._socket.onReconnectError(func);
    // this._socket.onConnectTimeout(func);
    // this._socket.onReconnectFailed(func);
  }

  void join({required String roomName, String? password}) {
    final data = {'roomName': roomName, 'password': password};
    this._socket.emit('join', data);
  }

  void leave() {
    this._socket.emit("leave");
  }

  void onWelcome(Function(Welcome) func) {
    _socket.off("welcome");
    _socket.on("welcome", (data) {
      func(Welcome.fromJson(data));
    });
  }

  void onNewPeer(Function(NewPeer newPeer) func) {
    _socket.off("newPeer");
    _socket.on("newPeer", (data) {
      func(NewPeer.fromJson(data));
    });
  }

  void sendReadySignal() {
    _socket.emit("ready");
  }

  void sendIceCandidate(OutgoingIceCandidate iceCandidate) {
    _socket.emit("iceCandidate", iceCandidate.toJson());
  }

  void onIceCandidate(Function(IncomingIceCandidate) func) {
    _socket.off("iceCandidate");
    _socket.on("iceCandidate", (data) {
      func(IncomingIceCandidate.fromJson(data));
    });
  }

  void sendSDP(OutgoingSDP sdp) {
    _socket.emit("sdp", sdp.toJson());
  }

  void onSDP(Function(IncomingSDP) func) {
    _socket.off("sdp");
    _socket.on("sdp", (data) {
      func(IncomingSDP.fromJson(data));
    });
  }

  void onBlitzError(Function(BlitzError) func) {
    _socket.off("blitzError");
    _socket.on("blitzError", (data) {
      func(BlitzError.fromJson(data));
    });
  }

  void onBye(dynamic Function(Bye) func) {
    this._socket.on("bye", (_) {
      func(Bye());
    });
  }

  void onByePeer(dynamic Function(ByePeer) func) {
    this._socket.on("byePeer", (data) {
      func(ByePeer.fromJson(data));
    });
  }
}
