import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

part 'peer_event.freezed.dart';

@freezed
class PeerEvent with _$PeerEvent {
  const factory PeerEvent.newMediaStream(
      {required String peerId, required MediaStream stream}) = NewMediaStream;

  const factory PeerEvent.newIceCandidate(
      {required String peerId,
      required RTCIceCandidate iceCandidate}) = NewIceCandidate;
}
