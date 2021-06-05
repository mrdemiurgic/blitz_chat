// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'signaler_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignalerEvent _$SignalerEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'disconnected':
      return Disconnected.fromJson(json);
    case 'connecting':
      return Connecting.fromJson(json);
    case 'connected':
      return Connected.fromJson(json);
    case 'connectionError':
      return ConnectionError.fromJson(json);
    case 'welcome':
      return Welcome.fromJson(json);
    case 'bye':
      return Bye.fromJson(json);
    case 'byePeer':
      return ByePeer.fromJson(json);
    case 'newPeer':
      return NewPeer.fromJson(json);
    case 'blitzError':
      return BlitzError.fromJson(json);
    case 'incomingIceCandidate':
      return IncomingIceCandidate.fromJson(json);
    case 'outgoingIceCandidate':
      return OutgoingIceCandidate.fromJson(json);
    case 'incomingSDP':
      return IncomingSDP.fromJson(json);
    case 'outgoingSDP':
      return OutgoingSDP.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$SignalerEventTearOff {
  const _$SignalerEventTearOff();

  Disconnected disconnected() {
    return const Disconnected();
  }

  Connecting connecting() {
    return const Connecting();
  }

  Connected connected() {
    return const Connected();
  }

  ConnectionError connectionError({required String message}) {
    return ConnectionError(
      message: message,
    );
  }

  Welcome welcome(
      {required String roomName,
      required List<String> peers,
      Map<String, dynamic>? iceConfig}) {
    return Welcome(
      roomName: roomName,
      peers: peers,
      iceConfig: iceConfig,
    );
  }

  Bye bye() {
    return const Bye();
  }

  ByePeer byePeer({required String id}) {
    return ByePeer(
      id: id,
    );
  }

  NewPeer newPeer(
      {required Map<String, dynamic> iceConfig, required String id}) {
    return NewPeer(
      iceConfig: iceConfig,
      id: id,
    );
  }

  BlitzError blitzError({required String message}) {
    return BlitzError(
      message: message,
    );
  }

  IncomingIceCandidate incomingIceCandidate(
      {@CandidateConverter() required RTCIceCandidate iceCandidate,
      required String from}) {
    return IncomingIceCandidate(
      iceCandidate: iceCandidate,
      from: from,
    );
  }

  OutgoingIceCandidate outgoingIceCandidate(
      {@CandidateConverter() required RTCIceCandidate iceCandidate,
      required String to}) {
    return OutgoingIceCandidate(
      iceCandidate: iceCandidate,
      to: to,
    );
  }

  IncomingSDP incomingSDP(
      {@SDPConverter() required RTCSessionDescription sdp,
      required String from}) {
    return IncomingSDP(
      sdp: sdp,
      from: from,
    );
  }

  OutgoingSDP outgoingSDP(
      {@SDPConverter() required RTCSessionDescription sdp,
      required String to}) {
    return OutgoingSDP(
      sdp: sdp,
      to: to,
    );
  }

  SignalerEvent fromJson(Map<String, Object> json) {
    return SignalerEvent.fromJson(json);
  }
}

/// @nodoc
const $SignalerEvent = _$SignalerEventTearOff();

/// @nodoc
mixin _$SignalerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignalerEventCopyWith<$Res> {
  factory $SignalerEventCopyWith(
          SignalerEvent value, $Res Function(SignalerEvent) then) =
      _$SignalerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignalerEventCopyWithImpl<$Res>
    implements $SignalerEventCopyWith<$Res> {
  _$SignalerEventCopyWithImpl(this._value, this._then);

  final SignalerEvent _value;
  // ignore: unused_field
  final $Res Function(SignalerEvent) _then;
}

/// @nodoc
abstract class $DisconnectedCopyWith<$Res> {
  factory $DisconnectedCopyWith(
          Disconnected value, $Res Function(Disconnected) then) =
      _$DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisconnectedCopyWithImpl<$Res> extends _$SignalerEventCopyWithImpl<$Res>
    implements $DisconnectedCopyWith<$Res> {
  _$DisconnectedCopyWithImpl(
      Disconnected _value, $Res Function(Disconnected) _then)
      : super(_value, (v) => _then(v as Disconnected));

  @override
  Disconnected get _value => super._value as Disconnected;
}

/// @nodoc
@JsonSerializable()
class _$Disconnected implements Disconnected {
  const _$Disconnected();

  factory _$Disconnected.fromJson(Map<String, dynamic> json) =>
      _$_$DisconnectedFromJson(json);

  @override
  String toString() {
    return 'SignalerEvent.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Disconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$DisconnectedToJson(this)..['runtimeType'] = 'disconnected';
  }
}

abstract class Disconnected implements SignalerEvent {
  const factory Disconnected() = _$Disconnected;

  factory Disconnected.fromJson(Map<String, dynamic> json) =
      _$Disconnected.fromJson;
}

/// @nodoc
abstract class $ConnectingCopyWith<$Res> {
  factory $ConnectingCopyWith(
          Connecting value, $Res Function(Connecting) then) =
      _$ConnectingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectingCopyWithImpl<$Res> extends _$SignalerEventCopyWithImpl<$Res>
    implements $ConnectingCopyWith<$Res> {
  _$ConnectingCopyWithImpl(Connecting _value, $Res Function(Connecting) _then)
      : super(_value, (v) => _then(v as Connecting));

  @override
  Connecting get _value => super._value as Connecting;
}

/// @nodoc
@JsonSerializable()
class _$Connecting implements Connecting {
  const _$Connecting();

  factory _$Connecting.fromJson(Map<String, dynamic> json) =>
      _$_$ConnectingFromJson(json);

  @override
  String toString() {
    return 'SignalerEvent.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Connecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ConnectingToJson(this)..['runtimeType'] = 'connecting';
  }
}

abstract class Connecting implements SignalerEvent {
  const factory Connecting() = _$Connecting;

  factory Connecting.fromJson(Map<String, dynamic> json) =
      _$Connecting.fromJson;
}

/// @nodoc
abstract class $ConnectedCopyWith<$Res> {
  factory $ConnectedCopyWith(Connected value, $Res Function(Connected) then) =
      _$ConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectedCopyWithImpl<$Res> extends _$SignalerEventCopyWithImpl<$Res>
    implements $ConnectedCopyWith<$Res> {
  _$ConnectedCopyWithImpl(Connected _value, $Res Function(Connected) _then)
      : super(_value, (v) => _then(v as Connected));

  @override
  Connected get _value => super._value as Connected;
}

/// @nodoc
@JsonSerializable()
class _$Connected implements Connected {
  const _$Connected();

  factory _$Connected.fromJson(Map<String, dynamic> json) =>
      _$_$ConnectedFromJson(json);

  @override
  String toString() {
    return 'SignalerEvent.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Connected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ConnectedToJson(this)..['runtimeType'] = 'connected';
  }
}

abstract class Connected implements SignalerEvent {
  const factory Connected() = _$Connected;

  factory Connected.fromJson(Map<String, dynamic> json) = _$Connected.fromJson;
}

/// @nodoc
abstract class $ConnectionErrorCopyWith<$Res> {
  factory $ConnectionErrorCopyWith(
          ConnectionError value, $Res Function(ConnectionError) then) =
      _$ConnectionErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ConnectionErrorCopyWithImpl<$Res>
    extends _$SignalerEventCopyWithImpl<$Res>
    implements $ConnectionErrorCopyWith<$Res> {
  _$ConnectionErrorCopyWithImpl(
      ConnectionError _value, $Res Function(ConnectionError) _then)
      : super(_value, (v) => _then(v as ConnectionError));

  @override
  ConnectionError get _value => super._value as ConnectionError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ConnectionError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConnectionError implements ConnectionError {
  const _$ConnectionError({required this.message});

  factory _$ConnectionError.fromJson(Map<String, dynamic> json) =>
      _$_$ConnectionErrorFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'SignalerEvent.connectionError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConnectionError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ConnectionErrorCopyWith<ConnectionError> get copyWith =>
      _$ConnectionErrorCopyWithImpl<ConnectionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return connectionError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ConnectionErrorToJson(this)..['runtimeType'] = 'connectionError';
  }
}

abstract class ConnectionError implements SignalerEvent {
  const factory ConnectionError({required String message}) = _$ConnectionError;

  factory ConnectionError.fromJson(Map<String, dynamic> json) =
      _$ConnectionError.fromJson;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectionErrorCopyWith<ConnectionError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeCopyWith<$Res> {
  factory $WelcomeCopyWith(Welcome value, $Res Function(Welcome) then) =
      _$WelcomeCopyWithImpl<$Res>;
  $Res call(
      {String roomName, List<String> peers, Map<String, dynamic>? iceConfig});
}

/// @nodoc
class _$WelcomeCopyWithImpl<$Res> extends _$SignalerEventCopyWithImpl<$Res>
    implements $WelcomeCopyWith<$Res> {
  _$WelcomeCopyWithImpl(Welcome _value, $Res Function(Welcome) _then)
      : super(_value, (v) => _then(v as Welcome));

  @override
  Welcome get _value => super._value as Welcome;

  @override
  $Res call({
    Object? roomName = freezed,
    Object? peers = freezed,
    Object? iceConfig = freezed,
  }) {
    return _then(Welcome(
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      peers: peers == freezed
          ? _value.peers
          : peers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      iceConfig: iceConfig == freezed
          ? _value.iceConfig
          : iceConfig // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Welcome implements Welcome {
  const _$Welcome(
      {required this.roomName, required this.peers, this.iceConfig});

  factory _$Welcome.fromJson(Map<String, dynamic> json) =>
      _$_$WelcomeFromJson(json);

  @override
  final String roomName;
  @override
  final List<String> peers;
  @override
  final Map<String, dynamic>? iceConfig;

  @override
  String toString() {
    return 'SignalerEvent.welcome(roomName: $roomName, peers: $peers, iceConfig: $iceConfig)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Welcome &&
            (identical(other.roomName, roomName) ||
                const DeepCollectionEquality()
                    .equals(other.roomName, roomName)) &&
            (identical(other.peers, peers) ||
                const DeepCollectionEquality().equals(other.peers, peers)) &&
            (identical(other.iceConfig, iceConfig) ||
                const DeepCollectionEquality()
                    .equals(other.iceConfig, iceConfig)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(roomName) ^
      const DeepCollectionEquality().hash(peers) ^
      const DeepCollectionEquality().hash(iceConfig);

  @JsonKey(ignore: true)
  @override
  $WelcomeCopyWith<Welcome> get copyWith =>
      _$WelcomeCopyWithImpl<Welcome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return welcome(roomName, peers, iceConfig);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (welcome != null) {
      return welcome(roomName, peers, iceConfig);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return welcome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (welcome != null) {
      return welcome(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$WelcomeToJson(this)..['runtimeType'] = 'welcome';
  }
}

abstract class Welcome implements SignalerEvent {
  const factory Welcome(
      {required String roomName,
      required List<String> peers,
      Map<String, dynamic>? iceConfig}) = _$Welcome;

  factory Welcome.fromJson(Map<String, dynamic> json) = _$Welcome.fromJson;

  String get roomName => throw _privateConstructorUsedError;
  List<String> get peers => throw _privateConstructorUsedError;
  Map<String, dynamic>? get iceConfig => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WelcomeCopyWith<Welcome> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ByeCopyWith<$Res> {
  factory $ByeCopyWith(Bye value, $Res Function(Bye) then) =
      _$ByeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ByeCopyWithImpl<$Res> extends _$SignalerEventCopyWithImpl<$Res>
    implements $ByeCopyWith<$Res> {
  _$ByeCopyWithImpl(Bye _value, $Res Function(Bye) _then)
      : super(_value, (v) => _then(v as Bye));

  @override
  Bye get _value => super._value as Bye;
}

/// @nodoc
@JsonSerializable()
class _$Bye implements Bye {
  const _$Bye();

  factory _$Bye.fromJson(Map<String, dynamic> json) => _$_$ByeFromJson(json);

  @override
  String toString() {
    return 'SignalerEvent.bye()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Bye);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return bye();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (bye != null) {
      return bye();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return bye(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (bye != null) {
      return bye(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ByeToJson(this)..['runtimeType'] = 'bye';
  }
}

abstract class Bye implements SignalerEvent {
  const factory Bye() = _$Bye;

  factory Bye.fromJson(Map<String, dynamic> json) = _$Bye.fromJson;
}

/// @nodoc
abstract class $ByePeerCopyWith<$Res> {
  factory $ByePeerCopyWith(ByePeer value, $Res Function(ByePeer) then) =
      _$ByePeerCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$ByePeerCopyWithImpl<$Res> extends _$SignalerEventCopyWithImpl<$Res>
    implements $ByePeerCopyWith<$Res> {
  _$ByePeerCopyWithImpl(ByePeer _value, $Res Function(ByePeer) _then)
      : super(_value, (v) => _then(v as ByePeer));

  @override
  ByePeer get _value => super._value as ByePeer;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(ByePeer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ByePeer implements ByePeer {
  const _$ByePeer({required this.id});

  factory _$ByePeer.fromJson(Map<String, dynamic> json) =>
      _$_$ByePeerFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'SignalerEvent.byePeer(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ByePeer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $ByePeerCopyWith<ByePeer> get copyWith =>
      _$ByePeerCopyWithImpl<ByePeer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return byePeer(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (byePeer != null) {
      return byePeer(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return byePeer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (byePeer != null) {
      return byePeer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ByePeerToJson(this)..['runtimeType'] = 'byePeer';
  }
}

abstract class ByePeer implements SignalerEvent {
  const factory ByePeer({required String id}) = _$ByePeer;

  factory ByePeer.fromJson(Map<String, dynamic> json) = _$ByePeer.fromJson;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ByePeerCopyWith<ByePeer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPeerCopyWith<$Res> {
  factory $NewPeerCopyWith(NewPeer value, $Res Function(NewPeer) then) =
      _$NewPeerCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> iceConfig, String id});
}

/// @nodoc
class _$NewPeerCopyWithImpl<$Res> extends _$SignalerEventCopyWithImpl<$Res>
    implements $NewPeerCopyWith<$Res> {
  _$NewPeerCopyWithImpl(NewPeer _value, $Res Function(NewPeer) _then)
      : super(_value, (v) => _then(v as NewPeer));

  @override
  NewPeer get _value => super._value as NewPeer;

  @override
  $Res call({
    Object? iceConfig = freezed,
    Object? id = freezed,
  }) {
    return _then(NewPeer(
      iceConfig: iceConfig == freezed
          ? _value.iceConfig
          : iceConfig // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewPeer implements NewPeer {
  const _$NewPeer({required this.iceConfig, required this.id});

  factory _$NewPeer.fromJson(Map<String, dynamic> json) =>
      _$_$NewPeerFromJson(json);

  @override
  final Map<String, dynamic> iceConfig;
  @override
  final String id;

  @override
  String toString() {
    return 'SignalerEvent.newPeer(iceConfig: $iceConfig, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewPeer &&
            (identical(other.iceConfig, iceConfig) ||
                const DeepCollectionEquality()
                    .equals(other.iceConfig, iceConfig)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iceConfig) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $NewPeerCopyWith<NewPeer> get copyWith =>
      _$NewPeerCopyWithImpl<NewPeer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return newPeer(iceConfig, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (newPeer != null) {
      return newPeer(iceConfig, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return newPeer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (newPeer != null) {
      return newPeer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$NewPeerToJson(this)..['runtimeType'] = 'newPeer';
  }
}

abstract class NewPeer implements SignalerEvent {
  const factory NewPeer(
      {required Map<String, dynamic> iceConfig,
      required String id}) = _$NewPeer;

  factory NewPeer.fromJson(Map<String, dynamic> json) = _$NewPeer.fromJson;

  Map<String, dynamic> get iceConfig => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewPeerCopyWith<NewPeer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlitzErrorCopyWith<$Res> {
  factory $BlitzErrorCopyWith(
          BlitzError value, $Res Function(BlitzError) then) =
      _$BlitzErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$BlitzErrorCopyWithImpl<$Res> extends _$SignalerEventCopyWithImpl<$Res>
    implements $BlitzErrorCopyWith<$Res> {
  _$BlitzErrorCopyWithImpl(BlitzError _value, $Res Function(BlitzError) _then)
      : super(_value, (v) => _then(v as BlitzError));

  @override
  BlitzError get _value => super._value as BlitzError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(BlitzError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlitzError implements BlitzError {
  const _$BlitzError({required this.message});

  factory _$BlitzError.fromJson(Map<String, dynamic> json) =>
      _$_$BlitzErrorFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'SignalerEvent.blitzError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BlitzError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $BlitzErrorCopyWith<BlitzError> get copyWith =>
      _$BlitzErrorCopyWithImpl<BlitzError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return blitzError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (blitzError != null) {
      return blitzError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return blitzError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (blitzError != null) {
      return blitzError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$BlitzErrorToJson(this)..['runtimeType'] = 'blitzError';
  }
}

abstract class BlitzError implements SignalerEvent {
  const factory BlitzError({required String message}) = _$BlitzError;

  factory BlitzError.fromJson(Map<String, dynamic> json) =
      _$BlitzError.fromJson;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlitzErrorCopyWith<BlitzError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomingIceCandidateCopyWith<$Res> {
  factory $IncomingIceCandidateCopyWith(IncomingIceCandidate value,
          $Res Function(IncomingIceCandidate) then) =
      _$IncomingIceCandidateCopyWithImpl<$Res>;
  $Res call({@CandidateConverter() RTCIceCandidate iceCandidate, String from});
}

/// @nodoc
class _$IncomingIceCandidateCopyWithImpl<$Res>
    extends _$SignalerEventCopyWithImpl<$Res>
    implements $IncomingIceCandidateCopyWith<$Res> {
  _$IncomingIceCandidateCopyWithImpl(
      IncomingIceCandidate _value, $Res Function(IncomingIceCandidate) _then)
      : super(_value, (v) => _then(v as IncomingIceCandidate));

  @override
  IncomingIceCandidate get _value => super._value as IncomingIceCandidate;

  @override
  $Res call({
    Object? iceCandidate = freezed,
    Object? from = freezed,
  }) {
    return _then(IncomingIceCandidate(
      iceCandidate: iceCandidate == freezed
          ? _value.iceCandidate
          : iceCandidate // ignore: cast_nullable_to_non_nullable
              as RTCIceCandidate,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IncomingIceCandidate implements IncomingIceCandidate {
  const _$IncomingIceCandidate(
      {@CandidateConverter() required this.iceCandidate, required this.from});

  factory _$IncomingIceCandidate.fromJson(Map<String, dynamic> json) =>
      _$_$IncomingIceCandidateFromJson(json);

  @override
  @CandidateConverter()
  final RTCIceCandidate iceCandidate;
  @override
  final String from;

  @override
  String toString() {
    return 'SignalerEvent.incomingIceCandidate(iceCandidate: $iceCandidate, from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncomingIceCandidate &&
            (identical(other.iceCandidate, iceCandidate) ||
                const DeepCollectionEquality()
                    .equals(other.iceCandidate, iceCandidate)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iceCandidate) ^
      const DeepCollectionEquality().hash(from);

  @JsonKey(ignore: true)
  @override
  $IncomingIceCandidateCopyWith<IncomingIceCandidate> get copyWith =>
      _$IncomingIceCandidateCopyWithImpl<IncomingIceCandidate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return incomingIceCandidate(iceCandidate, from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (incomingIceCandidate != null) {
      return incomingIceCandidate(iceCandidate, from);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return incomingIceCandidate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (incomingIceCandidate != null) {
      return incomingIceCandidate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$IncomingIceCandidateToJson(this)
      ..['runtimeType'] = 'incomingIceCandidate';
  }
}

abstract class IncomingIceCandidate implements SignalerEvent {
  const factory IncomingIceCandidate(
      {@CandidateConverter() required RTCIceCandidate iceCandidate,
      required String from}) = _$IncomingIceCandidate;

  factory IncomingIceCandidate.fromJson(Map<String, dynamic> json) =
      _$IncomingIceCandidate.fromJson;

  @CandidateConverter()
  RTCIceCandidate get iceCandidate => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncomingIceCandidateCopyWith<IncomingIceCandidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutgoingIceCandidateCopyWith<$Res> {
  factory $OutgoingIceCandidateCopyWith(OutgoingIceCandidate value,
          $Res Function(OutgoingIceCandidate) then) =
      _$OutgoingIceCandidateCopyWithImpl<$Res>;
  $Res call({@CandidateConverter() RTCIceCandidate iceCandidate, String to});
}

/// @nodoc
class _$OutgoingIceCandidateCopyWithImpl<$Res>
    extends _$SignalerEventCopyWithImpl<$Res>
    implements $OutgoingIceCandidateCopyWith<$Res> {
  _$OutgoingIceCandidateCopyWithImpl(
      OutgoingIceCandidate _value, $Res Function(OutgoingIceCandidate) _then)
      : super(_value, (v) => _then(v as OutgoingIceCandidate));

  @override
  OutgoingIceCandidate get _value => super._value as OutgoingIceCandidate;

  @override
  $Res call({
    Object? iceCandidate = freezed,
    Object? to = freezed,
  }) {
    return _then(OutgoingIceCandidate(
      iceCandidate: iceCandidate == freezed
          ? _value.iceCandidate
          : iceCandidate // ignore: cast_nullable_to_non_nullable
              as RTCIceCandidate,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutgoingIceCandidate implements OutgoingIceCandidate {
  const _$OutgoingIceCandidate(
      {@CandidateConverter() required this.iceCandidate, required this.to});

  factory _$OutgoingIceCandidate.fromJson(Map<String, dynamic> json) =>
      _$_$OutgoingIceCandidateFromJson(json);

  @override
  @CandidateConverter()
  final RTCIceCandidate iceCandidate;
  @override
  final String to;

  @override
  String toString() {
    return 'SignalerEvent.outgoingIceCandidate(iceCandidate: $iceCandidate, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OutgoingIceCandidate &&
            (identical(other.iceCandidate, iceCandidate) ||
                const DeepCollectionEquality()
                    .equals(other.iceCandidate, iceCandidate)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iceCandidate) ^
      const DeepCollectionEquality().hash(to);

  @JsonKey(ignore: true)
  @override
  $OutgoingIceCandidateCopyWith<OutgoingIceCandidate> get copyWith =>
      _$OutgoingIceCandidateCopyWithImpl<OutgoingIceCandidate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return outgoingIceCandidate(iceCandidate, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (outgoingIceCandidate != null) {
      return outgoingIceCandidate(iceCandidate, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return outgoingIceCandidate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (outgoingIceCandidate != null) {
      return outgoingIceCandidate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$OutgoingIceCandidateToJson(this)
      ..['runtimeType'] = 'outgoingIceCandidate';
  }
}

abstract class OutgoingIceCandidate implements SignalerEvent {
  const factory OutgoingIceCandidate(
      {@CandidateConverter() required RTCIceCandidate iceCandidate,
      required String to}) = _$OutgoingIceCandidate;

  factory OutgoingIceCandidate.fromJson(Map<String, dynamic> json) =
      _$OutgoingIceCandidate.fromJson;

  @CandidateConverter()
  RTCIceCandidate get iceCandidate => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutgoingIceCandidateCopyWith<OutgoingIceCandidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomingSDPCopyWith<$Res> {
  factory $IncomingSDPCopyWith(
          IncomingSDP value, $Res Function(IncomingSDP) then) =
      _$IncomingSDPCopyWithImpl<$Res>;
  $Res call({@SDPConverter() RTCSessionDescription sdp, String from});
}

/// @nodoc
class _$IncomingSDPCopyWithImpl<$Res> extends _$SignalerEventCopyWithImpl<$Res>
    implements $IncomingSDPCopyWith<$Res> {
  _$IncomingSDPCopyWithImpl(
      IncomingSDP _value, $Res Function(IncomingSDP) _then)
      : super(_value, (v) => _then(v as IncomingSDP));

  @override
  IncomingSDP get _value => super._value as IncomingSDP;

  @override
  $Res call({
    Object? sdp = freezed,
    Object? from = freezed,
  }) {
    return _then(IncomingSDP(
      sdp: sdp == freezed
          ? _value.sdp
          : sdp // ignore: cast_nullable_to_non_nullable
              as RTCSessionDescription,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IncomingSDP implements IncomingSDP {
  const _$IncomingSDP({@SDPConverter() required this.sdp, required this.from});

  factory _$IncomingSDP.fromJson(Map<String, dynamic> json) =>
      _$_$IncomingSDPFromJson(json);

  @override
  @SDPConverter()
  final RTCSessionDescription sdp;
  @override
  final String from;

  @override
  String toString() {
    return 'SignalerEvent.incomingSDP(sdp: $sdp, from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncomingSDP &&
            (identical(other.sdp, sdp) ||
                const DeepCollectionEquality().equals(other.sdp, sdp)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sdp) ^
      const DeepCollectionEquality().hash(from);

  @JsonKey(ignore: true)
  @override
  $IncomingSDPCopyWith<IncomingSDP> get copyWith =>
      _$IncomingSDPCopyWithImpl<IncomingSDP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return incomingSDP(sdp, from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (incomingSDP != null) {
      return incomingSDP(sdp, from);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return incomingSDP(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (incomingSDP != null) {
      return incomingSDP(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$IncomingSDPToJson(this)..['runtimeType'] = 'incomingSDP';
  }
}

abstract class IncomingSDP implements SignalerEvent {
  const factory IncomingSDP(
      {@SDPConverter() required RTCSessionDescription sdp,
      required String from}) = _$IncomingSDP;

  factory IncomingSDP.fromJson(Map<String, dynamic> json) =
      _$IncomingSDP.fromJson;

  @SDPConverter()
  RTCSessionDescription get sdp => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncomingSDPCopyWith<IncomingSDP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutgoingSDPCopyWith<$Res> {
  factory $OutgoingSDPCopyWith(
          OutgoingSDP value, $Res Function(OutgoingSDP) then) =
      _$OutgoingSDPCopyWithImpl<$Res>;
  $Res call({@SDPConverter() RTCSessionDescription sdp, String to});
}

/// @nodoc
class _$OutgoingSDPCopyWithImpl<$Res> extends _$SignalerEventCopyWithImpl<$Res>
    implements $OutgoingSDPCopyWith<$Res> {
  _$OutgoingSDPCopyWithImpl(
      OutgoingSDP _value, $Res Function(OutgoingSDP) _then)
      : super(_value, (v) => _then(v as OutgoingSDP));

  @override
  OutgoingSDP get _value => super._value as OutgoingSDP;

  @override
  $Res call({
    Object? sdp = freezed,
    Object? to = freezed,
  }) {
    return _then(OutgoingSDP(
      sdp: sdp == freezed
          ? _value.sdp
          : sdp // ignore: cast_nullable_to_non_nullable
              as RTCSessionDescription,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutgoingSDP implements OutgoingSDP {
  const _$OutgoingSDP({@SDPConverter() required this.sdp, required this.to});

  factory _$OutgoingSDP.fromJson(Map<String, dynamic> json) =>
      _$_$OutgoingSDPFromJson(json);

  @override
  @SDPConverter()
  final RTCSessionDescription sdp;
  @override
  final String to;

  @override
  String toString() {
    return 'SignalerEvent.outgoingSDP(sdp: $sdp, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OutgoingSDP &&
            (identical(other.sdp, sdp) ||
                const DeepCollectionEquality().equals(other.sdp, sdp)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sdp) ^
      const DeepCollectionEquality().hash(to);

  @JsonKey(ignore: true)
  @override
  $OutgoingSDPCopyWith<OutgoingSDP> get copyWith =>
      _$OutgoingSDPCopyWithImpl<OutgoingSDP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function(String message) connectionError,
    required TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)
        welcome,
    required TResult Function() bye,
    required TResult Function(String id) byePeer,
    required TResult Function(Map<String, dynamic> iceConfig, String id)
        newPeer,
    required TResult Function(String message) blitzError,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)
        incomingIceCandidate,
    required TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)
        outgoingIceCandidate,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String from)
        incomingSDP,
    required TResult Function(
            @SDPConverter() RTCSessionDescription sdp, String to)
        outgoingSDP,
  }) {
    return outgoingSDP(sdp, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function(String message)? connectionError,
    TResult Function(String roomName, List<String> peers,
            Map<String, dynamic>? iceConfig)?
        welcome,
    TResult Function()? bye,
    TResult Function(String id)? byePeer,
    TResult Function(Map<String, dynamic> iceConfig, String id)? newPeer,
    TResult Function(String message)? blitzError,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String from)?
        incomingIceCandidate,
    TResult Function(
            @CandidateConverter() RTCIceCandidate iceCandidate, String to)?
        outgoingIceCandidate,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String from)?
        incomingSDP,
    TResult Function(@SDPConverter() RTCSessionDescription sdp, String to)?
        outgoingSDP,
    required TResult orElse(),
  }) {
    if (outgoingSDP != null) {
      return outgoingSDP(sdp, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Connecting value) connecting,
    required TResult Function(Connected value) connected,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(Welcome value) welcome,
    required TResult Function(Bye value) bye,
    required TResult Function(ByePeer value) byePeer,
    required TResult Function(NewPeer value) newPeer,
    required TResult Function(BlitzError value) blitzError,
    required TResult Function(IncomingIceCandidate value) incomingIceCandidate,
    required TResult Function(OutgoingIceCandidate value) outgoingIceCandidate,
    required TResult Function(IncomingSDP value) incomingSDP,
    required TResult Function(OutgoingSDP value) outgoingSDP,
  }) {
    return outgoingSDP(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Connecting value)? connecting,
    TResult Function(Connected value)? connected,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(Welcome value)? welcome,
    TResult Function(Bye value)? bye,
    TResult Function(ByePeer value)? byePeer,
    TResult Function(NewPeer value)? newPeer,
    TResult Function(BlitzError value)? blitzError,
    TResult Function(IncomingIceCandidate value)? incomingIceCandidate,
    TResult Function(OutgoingIceCandidate value)? outgoingIceCandidate,
    TResult Function(IncomingSDP value)? incomingSDP,
    TResult Function(OutgoingSDP value)? outgoingSDP,
    required TResult orElse(),
  }) {
    if (outgoingSDP != null) {
      return outgoingSDP(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$OutgoingSDPToJson(this)..['runtimeType'] = 'outgoingSDP';
  }
}

abstract class OutgoingSDP implements SignalerEvent {
  const factory OutgoingSDP(
      {@SDPConverter() required RTCSessionDescription sdp,
      required String to}) = _$OutgoingSDP;

  factory OutgoingSDP.fromJson(Map<String, dynamic> json) =
      _$OutgoingSDP.fromJson;

  @SDPConverter()
  RTCSessionDescription get sdp => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutgoingSDPCopyWith<OutgoingSDP> get copyWith =>
      throw _privateConstructorUsedError;
}
