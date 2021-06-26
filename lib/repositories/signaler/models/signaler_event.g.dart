// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signaler_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Disconnected _$_$DisconnectedFromJson(Map<String, dynamic> json) {
  return _$Disconnected();
}

Map<String, dynamic> _$_$DisconnectedToJson(_$Disconnected instance) =>
    <String, dynamic>{};

_$Connecting _$_$ConnectingFromJson(Map<String, dynamic> json) {
  return _$Connecting();
}

Map<String, dynamic> _$_$ConnectingToJson(_$Connecting instance) =>
    <String, dynamic>{};

_$Connected _$_$ConnectedFromJson(Map<String, dynamic> json) {
  return _$Connected();
}

Map<String, dynamic> _$_$ConnectedToJson(_$Connected instance) =>
    <String, dynamic>{};

_$ConnectionError _$_$ConnectionErrorFromJson(Map<String, dynamic> json) {
  return _$ConnectionError(
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$ConnectionErrorToJson(_$ConnectionError instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$Welcome _$_$WelcomeFromJson(Map<String, dynamic> json) {
  return _$Welcome(
    roomName: json['roomName'] as String,
    peers: (json['peers'] as List<dynamic>).map((e) => e as String).toList(),
    iceConfig: json['iceConfig'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$_$WelcomeToJson(_$Welcome instance) => <String, dynamic>{
      'roomName': instance.roomName,
      'peers': instance.peers,
      'iceConfig': instance.iceConfig,
    };

_$Bye _$_$ByeFromJson(Map<String, dynamic> json) {
  return _$Bye();
}

Map<String, dynamic> _$_$ByeToJson(_$Bye instance) => <String, dynamic>{};

_$ByePeer _$_$ByePeerFromJson(Map<String, dynamic> json) {
  return _$ByePeer(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$ByePeerToJson(_$ByePeer instance) => <String, dynamic>{
      'id': instance.id,
    };

_$NewPeer _$_$NewPeerFromJson(Map<String, dynamic> json) {
  return _$NewPeer(
    iceConfig: json['iceConfig'] as Map<String, dynamic>,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$NewPeerToJson(_$NewPeer instance) => <String, dynamic>{
      'iceConfig': instance.iceConfig,
      'id': instance.id,
    };

_$BlitzError _$_$BlitzErrorFromJson(Map<String, dynamic> json) {
  return _$BlitzError(
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$BlitzErrorToJson(_$BlitzError instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$IncomingIceCandidate _$_$IncomingIceCandidateFromJson(
    Map<String, dynamic> json) {
  return _$IncomingIceCandidate(
    iceCandidate: const CandidateConverter()
        .fromJson(json['iceCandidate'] as Map<String, dynamic>),
    from: json['from'] as String,
  );
}

Map<String, dynamic> _$_$IncomingIceCandidateToJson(
        _$IncomingIceCandidate instance) =>
    <String, dynamic>{
      'iceCandidate': const CandidateConverter().toJson(instance.iceCandidate),
      'from': instance.from,
    };

_$OutgoingIceCandidate _$_$OutgoingIceCandidateFromJson(
    Map<String, dynamic> json) {
  return _$OutgoingIceCandidate(
    iceCandidate: const CandidateConverter()
        .fromJson(json['iceCandidate'] as Map<String, dynamic>),
    to: json['to'] as String,
  );
}

Map<String, dynamic> _$_$OutgoingIceCandidateToJson(
        _$OutgoingIceCandidate instance) =>
    <String, dynamic>{
      'iceCandidate': const CandidateConverter().toJson(instance.iceCandidate),
      'to': instance.to,
    };

_$IncomingSDP _$_$IncomingSDPFromJson(Map<String, dynamic> json) {
  return _$IncomingSDP(
    sdp: const SDPConverter().fromJson(json['sdp'] as Map<String, dynamic>),
    from: json['from'] as String,
    iceConfig: json['iceConfig'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$_$IncomingSDPToJson(_$IncomingSDP instance) =>
    <String, dynamic>{
      'sdp': const SDPConverter().toJson(instance.sdp),
      'from': instance.from,
      'iceConfig': instance.iceConfig,
    };

_$OutgoingSDP _$_$OutgoingSDPFromJson(Map<String, dynamic> json) {
  return _$OutgoingSDP(
    sdp: const SDPConverter().fromJson(json['sdp'] as Map<String, dynamic>),
    to: json['to'] as String,
  );
}

Map<String, dynamic> _$_$OutgoingSDPToJson(_$OutgoingSDP instance) =>
    <String, dynamic>{
      'sdp': const SDPConverter().toJson(instance.sdp),
      'to': instance.to,
    };
