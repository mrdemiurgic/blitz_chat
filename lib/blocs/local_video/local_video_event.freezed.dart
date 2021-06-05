// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'local_video_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocalVideoEventTearOff {
  const _$LocalVideoEventTearOff();

  Open open() {
    return const Open();
  }

  Close close() {
    return const Close();
  }
}

/// @nodoc
const $LocalVideoEvent = _$LocalVideoEventTearOff();

/// @nodoc
mixin _$LocalVideoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Open value) open,
    required TResult Function(Close value) close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Open value)? open,
    TResult Function(Close value)? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalVideoEventCopyWith<$Res> {
  factory $LocalVideoEventCopyWith(
          LocalVideoEvent value, $Res Function(LocalVideoEvent) then) =
      _$LocalVideoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocalVideoEventCopyWithImpl<$Res>
    implements $LocalVideoEventCopyWith<$Res> {
  _$LocalVideoEventCopyWithImpl(this._value, this._then);

  final LocalVideoEvent _value;
  // ignore: unused_field
  final $Res Function(LocalVideoEvent) _then;
}

/// @nodoc
abstract class $OpenCopyWith<$Res> {
  factory $OpenCopyWith(Open value, $Res Function(Open) then) =
      _$OpenCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenCopyWithImpl<$Res> extends _$LocalVideoEventCopyWithImpl<$Res>
    implements $OpenCopyWith<$Res> {
  _$OpenCopyWithImpl(Open _value, $Res Function(Open) _then)
      : super(_value, (v) => _then(v as Open));

  @override
  Open get _value => super._value as Open;
}

/// @nodoc

class _$Open with DiagnosticableTreeMixin implements Open {
  const _$Open();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalVideoEvent.open()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocalVideoEvent.open'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Open);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
  }) {
    return open();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Open value) open,
    required TResult Function(Close value) close,
  }) {
    return open(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Open value)? open,
    TResult Function(Close value)? close,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(this);
    }
    return orElse();
  }
}

abstract class Open implements LocalVideoEvent {
  const factory Open() = _$Open;
}

/// @nodoc
abstract class $CloseCopyWith<$Res> {
  factory $CloseCopyWith(Close value, $Res Function(Close) then) =
      _$CloseCopyWithImpl<$Res>;
}

/// @nodoc
class _$CloseCopyWithImpl<$Res> extends _$LocalVideoEventCopyWithImpl<$Res>
    implements $CloseCopyWith<$Res> {
  _$CloseCopyWithImpl(Close _value, $Res Function(Close) _then)
      : super(_value, (v) => _then(v as Close));

  @override
  Close get _value => super._value as Close;
}

/// @nodoc

class _$Close with DiagnosticableTreeMixin implements Close {
  const _$Close();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalVideoEvent.close()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocalVideoEvent.close'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Close);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Open value) open,
    required TResult Function(Close value) close,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Open value)? open,
    TResult Function(Close value)? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class Close implements LocalVideoEvent {
  const factory Close() = _$Close;
}
