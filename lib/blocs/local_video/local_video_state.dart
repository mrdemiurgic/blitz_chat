import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:flutter/foundation.dart';

part 'local_video_state.freezed.dart';

@freezed
class LocalVideoState with _$LocalVideoState {
  const factory LocalVideoState.streamClosed() = StreamClosed;
  const factory LocalVideoState.streamOpen({required MediaStream localStream}) =
      StreamOpen;
  const factory LocalVideoState.streamError({required Object message}) =
      StreamError;
}
