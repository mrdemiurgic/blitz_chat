// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'peer_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PeerEventTearOff {
  const _$PeerEventTearOff();

  NewMediaStream newMediaStream(
      {required String peerId, required MediaStream stream}) {
    return NewMediaStream(
      peerId: peerId,
      stream: stream,
    );
  }

  NewIceCandidate newIceCandidate(
      {required String peerId, required RTCIceCandidate iceCandidate}) {
    return NewIceCandidate(
      peerId: peerId,
      iceCandidate: iceCandidate,
    );
  }
}

/// @nodoc
const $PeerEvent = _$PeerEventTearOff();

/// @nodoc
mixin _$PeerEvent {
  String get peerId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String peerId, MediaStream stream) newMediaStream,
    required TResult Function(String peerId, RTCIceCandidate iceCandidate)
        newIceCandidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String peerId, MediaStream stream)? newMediaStream,
    TResult Function(String peerId, RTCIceCandidate iceCandidate)?
        newIceCandidate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewMediaStream value) newMediaStream,
    required TResult Function(NewIceCandidate value) newIceCandidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewMediaStream value)? newMediaStream,
    TResult Function(NewIceCandidate value)? newIceCandidate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PeerEventCopyWith<PeerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeerEventCopyWith<$Res> {
  factory $PeerEventCopyWith(PeerEvent value, $Res Function(PeerEvent) then) =
      _$PeerEventCopyWithImpl<$Res>;
  $Res call({String peerId});
}

/// @nodoc
class _$PeerEventCopyWithImpl<$Res> implements $PeerEventCopyWith<$Res> {
  _$PeerEventCopyWithImpl(this._value, this._then);

  final PeerEvent _value;
  // ignore: unused_field
  final $Res Function(PeerEvent) _then;

  @override
  $Res call({
    Object? peerId = freezed,
  }) {
    return _then(_value.copyWith(
      peerId: peerId == freezed
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $NewMediaStreamCopyWith<$Res>
    implements $PeerEventCopyWith<$Res> {
  factory $NewMediaStreamCopyWith(
          NewMediaStream value, $Res Function(NewMediaStream) then) =
      _$NewMediaStreamCopyWithImpl<$Res>;
  @override
  $Res call({String peerId, MediaStream stream});
}

/// @nodoc
class _$NewMediaStreamCopyWithImpl<$Res> extends _$PeerEventCopyWithImpl<$Res>
    implements $NewMediaStreamCopyWith<$Res> {
  _$NewMediaStreamCopyWithImpl(
      NewMediaStream _value, $Res Function(NewMediaStream) _then)
      : super(_value, (v) => _then(v as NewMediaStream));

  @override
  NewMediaStream get _value => super._value as NewMediaStream;

  @override
  $Res call({
    Object? peerId = freezed,
    Object? stream = freezed,
  }) {
    return _then(NewMediaStream(
      peerId: peerId == freezed
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String,
      stream: stream == freezed
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as MediaStream,
    ));
  }
}

/// @nodoc

class _$NewMediaStream implements NewMediaStream {
  const _$NewMediaStream({required this.peerId, required this.stream});

  @override
  final String peerId;
  @override
  final MediaStream stream;

  @override
  String toString() {
    return 'PeerEvent.newMediaStream(peerId: $peerId, stream: $stream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewMediaStream &&
            (identical(other.peerId, peerId) ||
                const DeepCollectionEquality().equals(other.peerId, peerId)) &&
            (identical(other.stream, stream) ||
                const DeepCollectionEquality().equals(other.stream, stream)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(peerId) ^
      const DeepCollectionEquality().hash(stream);

  @JsonKey(ignore: true)
  @override
  $NewMediaStreamCopyWith<NewMediaStream> get copyWith =>
      _$NewMediaStreamCopyWithImpl<NewMediaStream>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String peerId, MediaStream stream) newMediaStream,
    required TResult Function(String peerId, RTCIceCandidate iceCandidate)
        newIceCandidate,
  }) {
    return newMediaStream(peerId, stream);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String peerId, MediaStream stream)? newMediaStream,
    TResult Function(String peerId, RTCIceCandidate iceCandidate)?
        newIceCandidate,
    required TResult orElse(),
  }) {
    if (newMediaStream != null) {
      return newMediaStream(peerId, stream);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewMediaStream value) newMediaStream,
    required TResult Function(NewIceCandidate value) newIceCandidate,
  }) {
    return newMediaStream(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewMediaStream value)? newMediaStream,
    TResult Function(NewIceCandidate value)? newIceCandidate,
    required TResult orElse(),
  }) {
    if (newMediaStream != null) {
      return newMediaStream(this);
    }
    return orElse();
  }
}

abstract class NewMediaStream implements PeerEvent {
  const factory NewMediaStream(
      {required String peerId, required MediaStream stream}) = _$NewMediaStream;

  @override
  String get peerId => throw _privateConstructorUsedError;
  MediaStream get stream => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NewMediaStreamCopyWith<NewMediaStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewIceCandidateCopyWith<$Res>
    implements $PeerEventCopyWith<$Res> {
  factory $NewIceCandidateCopyWith(
          NewIceCandidate value, $Res Function(NewIceCandidate) then) =
      _$NewIceCandidateCopyWithImpl<$Res>;
  @override
  $Res call({String peerId, RTCIceCandidate iceCandidate});
}

/// @nodoc
class _$NewIceCandidateCopyWithImpl<$Res> extends _$PeerEventCopyWithImpl<$Res>
    implements $NewIceCandidateCopyWith<$Res> {
  _$NewIceCandidateCopyWithImpl(
      NewIceCandidate _value, $Res Function(NewIceCandidate) _then)
      : super(_value, (v) => _then(v as NewIceCandidate));

  @override
  NewIceCandidate get _value => super._value as NewIceCandidate;

  @override
  $Res call({
    Object? peerId = freezed,
    Object? iceCandidate = freezed,
  }) {
    return _then(NewIceCandidate(
      peerId: peerId == freezed
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String,
      iceCandidate: iceCandidate == freezed
          ? _value.iceCandidate
          : iceCandidate // ignore: cast_nullable_to_non_nullable
              as RTCIceCandidate,
    ));
  }
}

/// @nodoc

class _$NewIceCandidate implements NewIceCandidate {
  const _$NewIceCandidate({required this.peerId, required this.iceCandidate});

  @override
  final String peerId;
  @override
  final RTCIceCandidate iceCandidate;

  @override
  String toString() {
    return 'PeerEvent.newIceCandidate(peerId: $peerId, iceCandidate: $iceCandidate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewIceCandidate &&
            (identical(other.peerId, peerId) ||
                const DeepCollectionEquality().equals(other.peerId, peerId)) &&
            (identical(other.iceCandidate, iceCandidate) ||
                const DeepCollectionEquality()
                    .equals(other.iceCandidate, iceCandidate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(peerId) ^
      const DeepCollectionEquality().hash(iceCandidate);

  @JsonKey(ignore: true)
  @override
  $NewIceCandidateCopyWith<NewIceCandidate> get copyWith =>
      _$NewIceCandidateCopyWithImpl<NewIceCandidate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String peerId, MediaStream stream) newMediaStream,
    required TResult Function(String peerId, RTCIceCandidate iceCandidate)
        newIceCandidate,
  }) {
    return newIceCandidate(peerId, iceCandidate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String peerId, MediaStream stream)? newMediaStream,
    TResult Function(String peerId, RTCIceCandidate iceCandidate)?
        newIceCandidate,
    required TResult orElse(),
  }) {
    if (newIceCandidate != null) {
      return newIceCandidate(peerId, iceCandidate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewMediaStream value) newMediaStream,
    required TResult Function(NewIceCandidate value) newIceCandidate,
  }) {
    return newIceCandidate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewMediaStream value)? newMediaStream,
    TResult Function(NewIceCandidate value)? newIceCandidate,
    required TResult orElse(),
  }) {
    if (newIceCandidate != null) {
      return newIceCandidate(this);
    }
    return orElse();
  }
}

abstract class NewIceCandidate implements PeerEvent {
  const factory NewIceCandidate(
      {required String peerId,
      required RTCIceCandidate iceCandidate}) = _$NewIceCandidate;

  @override
  String get peerId => throw _privateConstructorUsedError;
  RTCIceCandidate get iceCandidate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NewIceCandidateCopyWith<NewIceCandidate> get copyWith =>
      throw _privateConstructorUsedError;
}
