import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.bootstrapping() = Bootstrapping;
  const factory AppState.outRoom({String? errorMessage}) = OutRoom;
  const factory AppState.inRoom({required String name}) = InRoom;
}
