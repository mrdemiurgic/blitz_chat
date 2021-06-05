import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:json_annotation/json_annotation.dart';

class CandidateConverter
    implements JsonConverter<RTCIceCandidate, Map<String, dynamic>> {
  const CandidateConverter();

  @override
  RTCIceCandidate fromJson(Map<String, dynamic> json) {
    return RTCIceCandidate(
        json["candidate"], json["sdpMid"], json["sdpMLineIndex"]);
  }

  @override
  Map<String, dynamic> toJson(RTCIceCandidate data) {
    return data.toMap();
  }
}

class SDPConverter
    implements JsonConverter<RTCSessionDescription, Map<String, dynamic>> {
  const SDPConverter();

  @override
  RTCSessionDescription fromJson(Map<String, dynamic> json) {
    return RTCSessionDescription(json["sdp"], json["type"]);
  }

  @override
  Map<String, dynamic> toJson(RTCSessionDescription data) {
    return data.toMap();
  }
}
