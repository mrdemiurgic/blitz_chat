import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'remote_videos_event.freezed.dart';

@freezed
class RemoteVideosEvent with _$RemoteVideosEvent {
  const factory RemoteVideosEvent.newPeer({required String id}) = NewPeer;
  const factory RemoteVideosEvent.newStream(
      {required String id, required MediaStream stream}) = NewStream;

  const factory RemoteVideosEvent.disposeStream({required String id}) =
      DisposeStream;

  const factory RemoteVideosEvent.disposeAllStreams() = DisposeAllStreams;
}
