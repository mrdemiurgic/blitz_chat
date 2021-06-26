// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'session_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SessionDescriptionTearOff {
  const _$SessionDescriptionTearOff();

  Offer offer({required String id, required RTCSessionDescription sdp}) {
    return Offer(
      id: id,
      sdp: sdp,
    );
  }

  Answer answer({required String id, required RTCSessionDescription sdp}) {
    return Answer(
      id: id,
      sdp: sdp,
    );
  }
}

/// @nodoc
const $SessionDescription = _$SessionDescriptionTearOff();

/// @nodoc
mixin _$SessionDescription {
  String get id => throw _privateConstructorUsedError;
  RTCSessionDescription get sdp => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, RTCSessionDescription sdp) offer,
    required TResult Function(String id, RTCSessionDescription sdp) answer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, RTCSessionDescription sdp)? offer,
    TResult Function(String id, RTCSessionDescription sdp)? answer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Offer value) offer,
    required TResult Function(Answer value) answer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Offer value)? offer,
    TResult Function(Answer value)? answer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionDescriptionCopyWith<SessionDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDescriptionCopyWith<$Res> {
  factory $SessionDescriptionCopyWith(
          SessionDescription value, $Res Function(SessionDescription) then) =
      _$SessionDescriptionCopyWithImpl<$Res>;
  $Res call({String id, RTCSessionDescription sdp});
}

/// @nodoc
class _$SessionDescriptionCopyWithImpl<$Res>
    implements $SessionDescriptionCopyWith<$Res> {
  _$SessionDescriptionCopyWithImpl(this._value, this._then);

  final SessionDescription _value;
  // ignore: unused_field
  final $Res Function(SessionDescription) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sdp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sdp: sdp == freezed
          ? _value.sdp
          : sdp // ignore: cast_nullable_to_non_nullable
              as RTCSessionDescription,
    ));
  }
}

/// @nodoc
abstract class $OfferCopyWith<$Res>
    implements $SessionDescriptionCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res>;
  @override
  $Res call({String id, RTCSessionDescription sdp});
}

/// @nodoc
class _$OfferCopyWithImpl<$Res> extends _$SessionDescriptionCopyWithImpl<$Res>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(Offer _value, $Res Function(Offer) _then)
      : super(_value, (v) => _then(v as Offer));

  @override
  Offer get _value => super._value as Offer;

  @override
  $Res call({
    Object? id = freezed,
    Object? sdp = freezed,
  }) {
    return _then(Offer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sdp: sdp == freezed
          ? _value.sdp
          : sdp // ignore: cast_nullable_to_non_nullable
              as RTCSessionDescription,
    ));
  }
}

/// @nodoc

class _$Offer with DiagnosticableTreeMixin implements Offer {
  const _$Offer({required this.id, required this.sdp});

  @override
  final String id;
  @override
  final RTCSessionDescription sdp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SessionDescription.offer(id: $id, sdp: $sdp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SessionDescription.offer'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sdp', sdp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Offer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sdp, sdp) ||
                const DeepCollectionEquality().equals(other.sdp, sdp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sdp);

  @JsonKey(ignore: true)
  @override
  $OfferCopyWith<Offer> get copyWith =>
      _$OfferCopyWithImpl<Offer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, RTCSessionDescription sdp) offer,
    required TResult Function(String id, RTCSessionDescription sdp) answer,
  }) {
    return offer(id, sdp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, RTCSessionDescription sdp)? offer,
    TResult Function(String id, RTCSessionDescription sdp)? answer,
    required TResult orElse(),
  }) {
    if (offer != null) {
      return offer(id, sdp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Offer value) offer,
    required TResult Function(Answer value) answer,
  }) {
    return offer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Offer value)? offer,
    TResult Function(Answer value)? answer,
    required TResult orElse(),
  }) {
    if (offer != null) {
      return offer(this);
    }
    return orElse();
  }
}

abstract class Offer implements SessionDescription {
  const factory Offer(
      {required String id, required RTCSessionDescription sdp}) = _$Offer;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  RTCSessionDescription get sdp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res>
    implements $SessionDescriptionCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res>;
  @override
  $Res call({String id, RTCSessionDescription sdp});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res> extends _$SessionDescriptionCopyWithImpl<$Res>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(Answer _value, $Res Function(Answer) _then)
      : super(_value, (v) => _then(v as Answer));

  @override
  Answer get _value => super._value as Answer;

  @override
  $Res call({
    Object? id = freezed,
    Object? sdp = freezed,
  }) {
    return _then(Answer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sdp: sdp == freezed
          ? _value.sdp
          : sdp // ignore: cast_nullable_to_non_nullable
              as RTCSessionDescription,
    ));
  }
}

/// @nodoc

class _$Answer with DiagnosticableTreeMixin implements Answer {
  const _$Answer({required this.id, required this.sdp});

  @override
  final String id;
  @override
  final RTCSessionDescription sdp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SessionDescription.answer(id: $id, sdp: $sdp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SessionDescription.answer'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sdp', sdp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Answer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sdp, sdp) ||
                const DeepCollectionEquality().equals(other.sdp, sdp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sdp);

  @JsonKey(ignore: true)
  @override
  $AnswerCopyWith<Answer> get copyWith =>
      _$AnswerCopyWithImpl<Answer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, RTCSessionDescription sdp) offer,
    required TResult Function(String id, RTCSessionDescription sdp) answer,
  }) {
    return answer(id, sdp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, RTCSessionDescription sdp)? offer,
    TResult Function(String id, RTCSessionDescription sdp)? answer,
    required TResult orElse(),
  }) {
    if (answer != null) {
      return answer(id, sdp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Offer value) offer,
    required TResult Function(Answer value) answer,
  }) {
    return answer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Offer value)? offer,
    TResult Function(Answer value)? answer,
    required TResult orElse(),
  }) {
    if (answer != null) {
      return answer(this);
    }
    return orElse();
  }
}

abstract class Answer implements SessionDescription {
  const factory Answer(
      {required String id, required RTCSessionDescription sdp}) = _$Answer;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  RTCSessionDescription get sdp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}
