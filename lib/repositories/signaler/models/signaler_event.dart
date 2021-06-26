import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

import 'json_converter.dart';

part 'signaler_event.freezed.dart';
part 'signaler_event.g.dart';

@freezed
class SignalerEvent with _$SignalerEvent {
  const factory SignalerEvent.disconnected() = Disconnected;

  const factory SignalerEvent.connecting() = Connecting;

  const factory SignalerEvent.connected() = Connected;

  const factory SignalerEvent.connectionError({required String message}) =
      ConnectionError;

  const factory SignalerEvent.welcome(
      {required String roomName,
      required List<String> peers,
      Map<String, dynamic>? iceConfig}) = Welcome;

  const factory SignalerEvent.bye() = Bye;

  const factory SignalerEvent.byePeer({required String id}) = ByePeer;

  const factory SignalerEvent.newPeer(
      {required Map<String, dynamic> iceConfig, required String id}) = NewPeer;

  const factory SignalerEvent.blitzError({required String message}) =
      BlitzError;

  const factory SignalerEvent.incomingIceCandidate(
      {@CandidateConverter() required RTCIceCandidate iceCandidate,
      required String from}) = IncomingIceCandidate;

  const factory SignalerEvent.outgoingIceCandidate(
      {@CandidateConverter() required RTCIceCandidate iceCandidate,
      required String to}) = OutgoingIceCandidate;

  const factory SignalerEvent.incomingSDP(
      {@SDPConverter() required RTCSessionDescription sdp,
      required String from,
      Map<String, dynamic>? iceConfig}) = IncomingSDP;

  const factory SignalerEvent.outgoingSDP(
      {@SDPConverter() required RTCSessionDescription sdp,
      required String to}) = OutgoingSDP;

  factory SignalerEvent.fromJson(Map<String, dynamic> json) =>
      _$SignalerEventFromJson(json);
}
