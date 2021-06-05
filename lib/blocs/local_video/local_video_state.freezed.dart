// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'local_video_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocalVideoStateTearOff {
  const _$LocalVideoStateTearOff();

  StreamClosed streamClosed() {
    return const StreamClosed();
  }

  StreamOpen streamOpen({required MediaStream localStream}) {
    return StreamOpen(
      localStream: localStream,
    );
  }

  StreamError streamError({required Object message}) {
    return StreamError(
      message: message,
    );
  }
}

/// @nodoc
const $LocalVideoState = _$LocalVideoStateTearOff();

/// @nodoc
mixin _$LocalVideoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() streamClosed,
    required TResult Function(MediaStream localStream) streamOpen,
    required TResult Function(Object message) streamError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? streamClosed,
    TResult Function(MediaStream localStream)? streamOpen,
    TResult Function(Object message)? streamError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamClosed value) streamClosed,
    required TResult Function(StreamOpen value) streamOpen,
    required TResult Function(StreamError value) streamError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamClosed value)? streamClosed,
    TResult Function(StreamOpen value)? streamOpen,
    TResult Function(StreamError value)? streamError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalVideoStateCopyWith<$Res> {
  factory $LocalVideoStateCopyWith(
          LocalVideoState value, $Res Function(LocalVideoState) then) =
      _$LocalVideoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocalVideoStateCopyWithImpl<$Res>
    implements $LocalVideoStateCopyWith<$Res> {
  _$LocalVideoStateCopyWithImpl(this._value, this._then);

  final LocalVideoState _value;
  // ignore: unused_field
  final $Res Function(LocalVideoState) _then;
}

/// @nodoc
abstract class $StreamClosedCopyWith<$Res> {
  factory $StreamClosedCopyWith(
          StreamClosed value, $Res Function(StreamClosed) then) =
      _$StreamClosedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StreamClosedCopyWithImpl<$Res>
    extends _$LocalVideoStateCopyWithImpl<$Res>
    implements $StreamClosedCopyWith<$Res> {
  _$StreamClosedCopyWithImpl(
      StreamClosed _value, $Res Function(StreamClosed) _then)
      : super(_value, (v) => _then(v as StreamClosed));

  @override
  StreamClosed get _value => super._value as StreamClosed;
}

/// @nodoc

class _$StreamClosed with DiagnosticableTreeMixin implements StreamClosed {
  const _$StreamClosed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalVideoState.streamClosed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalVideoState.streamClosed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StreamClosed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() streamClosed,
    required TResult Function(MediaStream localStream) streamOpen,
    required TResult Function(Object message) streamError,
  }) {
    return streamClosed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? streamClosed,
    TResult Function(MediaStream localStream)? streamOpen,
    TResult Function(Object message)? streamError,
    required TResult orElse(),
  }) {
    if (streamClosed != null) {
      return streamClosed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamClosed value) streamClosed,
    required TResult Function(StreamOpen value) streamOpen,
    required TResult Function(StreamError value) streamError,
  }) {
    return streamClosed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamClosed value)? streamClosed,
    TResult Function(StreamOpen value)? streamOpen,
    TResult Function(StreamError value)? streamError,
    required TResult orElse(),
  }) {
    if (streamClosed != null) {
      return streamClosed(this);
    }
    return orElse();
  }
}

abstract class StreamClosed implements LocalVideoState {
  const factory StreamClosed() = _$StreamClosed;
}

/// @nodoc
abstract class $StreamOpenCopyWith<$Res> {
  factory $StreamOpenCopyWith(
          StreamOpen value, $Res Function(StreamOpen) then) =
      _$StreamOpenCopyWithImpl<$Res>;
  $Res call({MediaStream localStream});
}

/// @nodoc
class _$StreamOpenCopyWithImpl<$Res> extends _$LocalVideoStateCopyWithImpl<$Res>
    implements $StreamOpenCopyWith<$Res> {
  _$StreamOpenCopyWithImpl(StreamOpen _value, $Res Function(StreamOpen) _then)
      : super(_value, (v) => _then(v as StreamOpen));

  @override
  StreamOpen get _value => super._value as StreamOpen;

  @override
  $Res call({
    Object? localStream = freezed,
  }) {
    return _then(StreamOpen(
      localStream: localStream == freezed
          ? _value.localStream
          : localStream // ignore: cast_nullable_to_non_nullable
              as MediaStream,
    ));
  }
}

/// @nodoc

class _$StreamOpen with DiagnosticableTreeMixin implements StreamOpen {
  const _$StreamOpen({required this.localStream});

  @override
  final MediaStream localStream;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalVideoState.streamOpen(localStream: $localStream)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalVideoState.streamOpen'))
      ..add(DiagnosticsProperty('localStream', localStream));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StreamOpen &&
            (identical(other.localStream, localStream) ||
                const DeepCollectionEquality()
                    .equals(other.localStream, localStream)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(localStream);

  @JsonKey(ignore: true)
  @override
  $StreamOpenCopyWith<StreamOpen> get copyWith =>
      _$StreamOpenCopyWithImpl<StreamOpen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() streamClosed,
    required TResult Function(MediaStream localStream) streamOpen,
    required TResult Function(Object message) streamError,
  }) {
    return streamOpen(localStream);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? streamClosed,
    TResult Function(MediaStream localStream)? streamOpen,
    TResult Function(Object message)? streamError,
    required TResult orElse(),
  }) {
    if (streamOpen != null) {
      return streamOpen(localStream);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamClosed value) streamClosed,
    required TResult Function(StreamOpen value) streamOpen,
    required TResult Function(StreamError value) streamError,
  }) {
    return streamOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamClosed value)? streamClosed,
    TResult Function(StreamOpen value)? streamOpen,
    TResult Function(StreamError value)? streamError,
    required TResult orElse(),
  }) {
    if (streamOpen != null) {
      return streamOpen(this);
    }
    return orElse();
  }
}

abstract class StreamOpen implements LocalVideoState {
  const factory StreamOpen({required MediaStream localStream}) = _$StreamOpen;

  MediaStream get localStream => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamOpenCopyWith<StreamOpen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamErrorCopyWith<$Res> {
  factory $StreamErrorCopyWith(
          StreamError value, $Res Function(StreamError) then) =
      _$StreamErrorCopyWithImpl<$Res>;
  $Res call({Object message});
}

/// @nodoc
class _$StreamErrorCopyWithImpl<$Res>
    extends _$LocalVideoStateCopyWithImpl<$Res>
    implements $StreamErrorCopyWith<$Res> {
  _$StreamErrorCopyWithImpl(
      StreamError _value, $Res Function(StreamError) _then)
      : super(_value, (v) => _then(v as StreamError));

  @override
  StreamError get _value => super._value as StreamError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(StreamError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$StreamError with DiagnosticableTreeMixin implements StreamError {
  const _$StreamError({required this.message});

  @override
  final Object message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalVideoState.streamError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalVideoState.streamError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StreamError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $StreamErrorCopyWith<StreamError> get copyWith =>
      _$StreamErrorCopyWithImpl<StreamError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() streamClosed,
    required TResult Function(MediaStream localStream) streamOpen,
    required TResult Function(Object message) streamError,
  }) {
    return streamError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? streamClosed,
    TResult Function(MediaStream localStream)? streamOpen,
    TResult Function(Object message)? streamError,
    required TResult orElse(),
  }) {
    if (streamError != null) {
      return streamError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamClosed value) streamClosed,
    required TResult Function(StreamOpen value) streamOpen,
    required TResult Function(StreamError value) streamError,
  }) {
    return streamError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamClosed value)? streamClosed,
    TResult Function(StreamOpen value)? streamOpen,
    TResult Function(StreamError value)? streamError,
    required TResult orElse(),
  }) {
    if (streamError != null) {
      return streamError(this);
    }
    return orElse();
  }
}

abstract class StreamError implements LocalVideoState {
  const factory StreamError({required Object message}) = _$StreamError;

  Object get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamErrorCopyWith<StreamError> get copyWith =>
      throw _privateConstructorUsedError;
}
