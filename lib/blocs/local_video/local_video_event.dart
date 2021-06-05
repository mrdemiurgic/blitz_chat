import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'local_video_event.freezed.dart';

@freezed
class LocalVideoEvent with _$LocalVideoEvent {
  const factory LocalVideoEvent.open() = Open;
  const factory LocalVideoEvent.close() = Close;
}
