// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'remote_videos_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RemoteVideosEventTearOff {
  const _$RemoteVideosEventTearOff();

  NewPeer newPeer({required String id}) {
    return NewPeer(
      id: id,
    );
  }

  NewStream newStream({required String id, required MediaStream stream}) {
    return NewStream(
      id: id,
      stream: stream,
    );
  }

  DisposeStream disposeStream({required String id}) {
    return DisposeStream(
      id: id,
    );
  }

  DisposeAllStreams disposeAllStreams() {
    return const DisposeAllStreams();
  }
}

/// @nodoc
const $RemoteVideosEvent = _$RemoteVideosEventTearOff();

/// @nodoc
mixin _$RemoteVideosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) newPeer,
    required TResult Function(String id, MediaStream stream) newStream,
    required TResult Function(String id) disposeStream,
    required TResult Function() disposeAllStreams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? newPeer,
    TResult Function(String id, MediaStream stream)? newStream,
    TResult Function(String id)? disposeStream,
    TResult Function()? disposeAllStreams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(NewStream value) newStream,
    required TResult Function(DisposeStream value) disposeStream,
    required TResult Function(DisposeAllStreams value) disposeAllStreams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPeer value)? newPeer,
    TResult Function(NewStream value)? newStream,
    TResult Function(DisposeStream value)? disposeStream,
    TResult Function(DisposeAllStreams value)? disposeAllStreams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteVideosEventCopyWith<$Res> {
  factory $RemoteVideosEventCopyWith(
          RemoteVideosEvent value, $Res Function(RemoteVideosEvent) then) =
      _$RemoteVideosEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoteVideosEventCopyWithImpl<$Res>
    implements $RemoteVideosEventCopyWith<$Res> {
  _$RemoteVideosEventCopyWithImpl(this._value, this._then);

  final RemoteVideosEvent _value;
  // ignore: unused_field
  final $Res Function(RemoteVideosEvent) _then;
}

/// @nodoc
abstract class $NewPeerCopyWith<$Res> {
  factory $NewPeerCopyWith(NewPeer value, $Res Function(NewPeer) then) =
      _$NewPeerCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$NewPeerCopyWithImpl<$Res> extends _$RemoteVideosEventCopyWithImpl<$Res>
    implements $NewPeerCopyWith<$Res> {
  _$NewPeerCopyWithImpl(NewPeer _value, $Res Function(NewPeer) _then)
      : super(_value, (v) => _then(v as NewPeer));

  @override
  NewPeer get _value => super._value as NewPeer;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(NewPeer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewPeer with DiagnosticableTreeMixin implements NewPeer {
  const _$NewPeer({required this.id});

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteVideosEvent.newPeer(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemoteVideosEvent.newPeer'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewPeer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $NewPeerCopyWith<NewPeer> get copyWith =>
      _$NewPeerCopyWithImpl<NewPeer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) newPeer,
    required TResult Function(String id, MediaStream stream) newStream,
    required TResult Function(String id) disposeStream,
    required TResult Function() disposeAllStreams,
  }) {
    return newPeer(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? newPeer,
    TResult Function(String id, MediaStream stream)? newStream,
    TResult Function(String id)? disposeStream,
    TResult Function()? disposeAllStreams,
    required TResult orElse(),
  }) {
    if (newPeer != null) {
      return newPeer(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(NewStream value) newStream,
    required TResult Function(DisposeStream value) disposeStream,
    required TResult Function(DisposeAllStreams value) disposeAllStreams,
  }) {
    return newPeer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPeer value)? newPeer,
    TResult Function(NewStream value)? newStream,
    TResult Function(DisposeStream value)? disposeStream,
    TResult Function(DisposeAllStreams value)? disposeAllStreams,
    required TResult orElse(),
  }) {
    if (newPeer != null) {
      return newPeer(this);
    }
    return orElse();
  }
}

abstract class NewPeer implements RemoteVideosEvent {
  const factory NewPeer({required String id}) = _$NewPeer;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewPeerCopyWith<NewPeer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewStreamCopyWith<$Res> {
  factory $NewStreamCopyWith(NewStream value, $Res Function(NewStream) then) =
      _$NewStreamCopyWithImpl<$Res>;
  $Res call({String id, MediaStream stream});
}

/// @nodoc
class _$NewStreamCopyWithImpl<$Res>
    extends _$RemoteVideosEventCopyWithImpl<$Res>
    implements $NewStreamCopyWith<$Res> {
  _$NewStreamCopyWithImpl(NewStream _value, $Res Function(NewStream) _then)
      : super(_value, (v) => _then(v as NewStream));

  @override
  NewStream get _value => super._value as NewStream;

  @override
  $Res call({
    Object? id = freezed,
    Object? stream = freezed,
  }) {
    return _then(NewStream(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stream: stream == freezed
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as MediaStream,
    ));
  }
}

/// @nodoc

class _$NewStream with DiagnosticableTreeMixin implements NewStream {
  const _$NewStream({required this.id, required this.stream});

  @override
  final String id;
  @override
  final MediaStream stream;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteVideosEvent.newStream(id: $id, stream: $stream)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemoteVideosEvent.newStream'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('stream', stream));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewStream &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.stream, stream) ||
                const DeepCollectionEquality().equals(other.stream, stream)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(stream);

  @JsonKey(ignore: true)
  @override
  $NewStreamCopyWith<NewStream> get copyWith =>
      _$NewStreamCopyWithImpl<NewStream>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) newPeer,
    required TResult Function(String id, MediaStream stream) newStream,
    required TResult Function(String id) disposeStream,
    required TResult Function() disposeAllStreams,
  }) {
    return newStream(id, stream);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? newPeer,
    TResult Function(String id, MediaStream stream)? newStream,
    TResult Function(String id)? disposeStream,
    TResult Function()? disposeAllStreams,
    required TResult orElse(),
  }) {
    if (newStream != null) {
      return newStream(id, stream);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(NewStream value) newStream,
    required TResult Function(DisposeStream value) disposeStream,
    required TResult Function(DisposeAllStreams value) disposeAllStreams,
  }) {
    return newStream(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPeer value)? newPeer,
    TResult Function(NewStream value)? newStream,
    TResult Function(DisposeStream value)? disposeStream,
    TResult Function(DisposeAllStreams value)? disposeAllStreams,
    required TResult orElse(),
  }) {
    if (newStream != null) {
      return newStream(this);
    }
    return orElse();
  }
}

abstract class NewStream implements RemoteVideosEvent {
  const factory NewStream({required String id, required MediaStream stream}) =
      _$NewStream;

  String get id => throw _privateConstructorUsedError;
  MediaStream get stream => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewStreamCopyWith<NewStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisposeStreamCopyWith<$Res> {
  factory $DisposeStreamCopyWith(
          DisposeStream value, $Res Function(DisposeStream) then) =
      _$DisposeStreamCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$DisposeStreamCopyWithImpl<$Res>
    extends _$RemoteVideosEventCopyWithImpl<$Res>
    implements $DisposeStreamCopyWith<$Res> {
  _$DisposeStreamCopyWithImpl(
      DisposeStream _value, $Res Function(DisposeStream) _then)
      : super(_value, (v) => _then(v as DisposeStream));

  @override
  DisposeStream get _value => super._value as DisposeStream;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(DisposeStream(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DisposeStream with DiagnosticableTreeMixin implements DisposeStream {
  const _$DisposeStream({required this.id});

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteVideosEvent.disposeStream(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemoteVideosEvent.disposeStream'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DisposeStream &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $DisposeStreamCopyWith<DisposeStream> get copyWith =>
      _$DisposeStreamCopyWithImpl<DisposeStream>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) newPeer,
    required TResult Function(String id, MediaStream stream) newStream,
    required TResult Function(String id) disposeStream,
    required TResult Function() disposeAllStreams,
  }) {
    return disposeStream(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? newPeer,
    TResult Function(String id, MediaStream stream)? newStream,
    TResult Function(String id)? disposeStream,
    TResult Function()? disposeAllStreams,
    required TResult orElse(),
  }) {
    if (disposeStream != null) {
      return disposeStream(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(NewStream value) newStream,
    required TResult Function(DisposeStream value) disposeStream,
    required TResult Function(DisposeAllStreams value) disposeAllStreams,
  }) {
    return disposeStream(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPeer value)? newPeer,
    TResult Function(NewStream value)? newStream,
    TResult Function(DisposeStream value)? disposeStream,
    TResult Function(DisposeAllStreams value)? disposeAllStreams,
    required TResult orElse(),
  }) {
    if (disposeStream != null) {
      return disposeStream(this);
    }
    return orElse();
  }
}

abstract class DisposeStream implements RemoteVideosEvent {
  const factory DisposeStream({required String id}) = _$DisposeStream;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisposeStreamCopyWith<DisposeStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisposeAllStreamsCopyWith<$Res> {
  factory $DisposeAllStreamsCopyWith(
          DisposeAllStreams value, $Res Function(DisposeAllStreams) then) =
      _$DisposeAllStreamsCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisposeAllStreamsCopyWithImpl<$Res>
    extends _$RemoteVideosEventCopyWithImpl<$Res>
    implements $DisposeAllStreamsCopyWith<$Res> {
  _$DisposeAllStreamsCopyWithImpl(
      DisposeAllStreams _value, $Res Function(DisposeAllStreams) _then)
      : super(_value, (v) => _then(v as DisposeAllStreams));

  @override
  DisposeAllStreams get _value => super._value as DisposeAllStreams;
}

/// @nodoc

class _$DisposeAllStreams
    with DiagnosticableTreeMixin
    implements DisposeAllStreams {
  const _$DisposeAllStreams();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteVideosEvent.disposeAllStreams()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemoteVideosEvent.disposeAllStreams'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DisposeAllStreams);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) newPeer,
    required TResult Function(String id, MediaStream stream) newStream,
    required TResult Function(String id) disposeStream,
    required TResult Function() disposeAllStreams,
  }) {
    return disposeAllStreams();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? newPeer,
    TResult Function(String id, MediaStream stream)? newStream,
    TResult Function(String id)? disposeStream,
    TResult Function()? disposeAllStreams,
    required TResult orElse(),
  }) {
    if (disposeAllStreams != null) {
      return disposeAllStreams();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(NewStream value) newStream,
    required TResult Function(DisposeStream value) disposeStream,
    required TResult Function(DisposeAllStreams value) disposeAllStreams,
  }) {
    return disposeAllStreams(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPeer value)? newPeer,
    TResult Function(NewStream value)? newStream,
    TResult Function(DisposeStream value)? disposeStream,
    TResult Function(DisposeAllStreams value)? disposeAllStreams,
    required TResult orElse(),
  }) {
    if (disposeAllStreams != null) {
      return disposeAllStreams(this);
    }
    return orElse();
  }
}

abstract class DisposeAllStreams implements RemoteVideosEvent {
  const factory DisposeAllStreams() = _$DisposeAllStreams;
}
