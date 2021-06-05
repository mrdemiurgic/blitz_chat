// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'remote_video_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RemoteVideoStateTearOff {
  const _$RemoteVideoStateTearOff();

  InitConnection initConnection() {
    return const InitConnection();
  }

  EstablishedConnection establishedConnection({required MediaStream stream}) {
    return EstablishedConnection(
      stream: stream,
    );
  }
}

/// @nodoc
const $RemoteVideoState = _$RemoteVideoStateTearOff();

/// @nodoc
mixin _$RemoteVideoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initConnection,
    required TResult Function(MediaStream stream) establishedConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initConnection,
    TResult Function(MediaStream stream)? establishedConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitConnection value) initConnection,
    required TResult Function(EstablishedConnection value)
        establishedConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitConnection value)? initConnection,
    TResult Function(EstablishedConnection value)? establishedConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteVideoStateCopyWith<$Res> {
  factory $RemoteVideoStateCopyWith(
          RemoteVideoState value, $Res Function(RemoteVideoState) then) =
      _$RemoteVideoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoteVideoStateCopyWithImpl<$Res>
    implements $RemoteVideoStateCopyWith<$Res> {
  _$RemoteVideoStateCopyWithImpl(this._value, this._then);

  final RemoteVideoState _value;
  // ignore: unused_field
  final $Res Function(RemoteVideoState) _then;
}

/// @nodoc
abstract class $InitConnectionCopyWith<$Res> {
  factory $InitConnectionCopyWith(
          InitConnection value, $Res Function(InitConnection) then) =
      _$InitConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitConnectionCopyWithImpl<$Res>
    extends _$RemoteVideoStateCopyWithImpl<$Res>
    implements $InitConnectionCopyWith<$Res> {
  _$InitConnectionCopyWithImpl(
      InitConnection _value, $Res Function(InitConnection) _then)
      : super(_value, (v) => _then(v as InitConnection));

  @override
  InitConnection get _value => super._value as InitConnection;
}

/// @nodoc

class _$InitConnection with DiagnosticableTreeMixin implements InitConnection {
  const _$InitConnection();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteVideoState.initConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemoteVideoState.initConnection'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initConnection,
    required TResult Function(MediaStream stream) establishedConnection,
  }) {
    return initConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initConnection,
    TResult Function(MediaStream stream)? establishedConnection,
    required TResult orElse(),
  }) {
    if (initConnection != null) {
      return initConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitConnection value) initConnection,
    required TResult Function(EstablishedConnection value)
        establishedConnection,
  }) {
    return initConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitConnection value)? initConnection,
    TResult Function(EstablishedConnection value)? establishedConnection,
    required TResult orElse(),
  }) {
    if (initConnection != null) {
      return initConnection(this);
    }
    return orElse();
  }
}

abstract class InitConnection implements RemoteVideoState {
  const factory InitConnection() = _$InitConnection;
}

/// @nodoc
abstract class $EstablishedConnectionCopyWith<$Res> {
  factory $EstablishedConnectionCopyWith(EstablishedConnection value,
          $Res Function(EstablishedConnection) then) =
      _$EstablishedConnectionCopyWithImpl<$Res>;
  $Res call({MediaStream stream});
}

/// @nodoc
class _$EstablishedConnectionCopyWithImpl<$Res>
    extends _$RemoteVideoStateCopyWithImpl<$Res>
    implements $EstablishedConnectionCopyWith<$Res> {
  _$EstablishedConnectionCopyWithImpl(
      EstablishedConnection _value, $Res Function(EstablishedConnection) _then)
      : super(_value, (v) => _then(v as EstablishedConnection));

  @override
  EstablishedConnection get _value => super._value as EstablishedConnection;

  @override
  $Res call({
    Object? stream = freezed,
  }) {
    return _then(EstablishedConnection(
      stream: stream == freezed
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as MediaStream,
    ));
  }
}

/// @nodoc

class _$EstablishedConnection
    with DiagnosticableTreeMixin
    implements EstablishedConnection {
  const _$EstablishedConnection({required this.stream});

  @override
  final MediaStream stream;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteVideoState.establishedConnection(stream: $stream)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'RemoteVideoState.establishedConnection'))
      ..add(DiagnosticsProperty('stream', stream));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EstablishedConnection &&
            (identical(other.stream, stream) ||
                const DeepCollectionEquality().equals(other.stream, stream)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stream);

  @JsonKey(ignore: true)
  @override
  $EstablishedConnectionCopyWith<EstablishedConnection> get copyWith =>
      _$EstablishedConnectionCopyWithImpl<EstablishedConnection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initConnection,
    required TResult Function(MediaStream stream) establishedConnection,
  }) {
    return establishedConnection(stream);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initConnection,
    TResult Function(MediaStream stream)? establishedConnection,
    required TResult orElse(),
  }) {
    if (establishedConnection != null) {
      return establishedConnection(stream);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitConnection value) initConnection,
    required TResult Function(EstablishedConnection value)
        establishedConnection,
  }) {
    return establishedConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitConnection value)? initConnection,
    TResult Function(EstablishedConnection value)? establishedConnection,
    required TResult orElse(),
  }) {
    if (establishedConnection != null) {
      return establishedConnection(this);
    }
    return orElse();
  }
}

abstract class EstablishedConnection implements RemoteVideoState {
  const factory EstablishedConnection({required MediaStream stream}) =
      _$EstablishedConnection;

  MediaStream get stream => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstablishedConnectionCopyWith<EstablishedConnection> get copyWith =>
      throw _privateConstructorUsedError;
}
