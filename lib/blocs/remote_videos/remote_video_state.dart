import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'remote_video_state.freezed.dart';

@freezed
class RemoteVideoState with _$RemoteVideoState {
  const factory RemoteVideoState.initConnection() = InitConnection;
  const factory RemoteVideoState.establishedConnection(
      {required MediaStream stream}) = EstablishedConnection;
}
