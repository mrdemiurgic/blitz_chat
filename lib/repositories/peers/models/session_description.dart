import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'session_description.freezed.dart';

@freezed
class SessionDescription with _$SessionDescription {
  const factory SessionDescription.offer(
      {required String id, required RTCSessionDescription sdp}) = Offer;
  const factory SessionDescription.answer(
      {required String id, required RTCSessionDescription sdp}) = Answer;
}
