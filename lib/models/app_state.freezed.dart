// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  Bootstrapping bootstrapping() {
    return const Bootstrapping();
  }

  OutRoom outRoom({String? errorMessage}) {
    return OutRoom(
      errorMessage: errorMessage,
    );
  }

  InRoom inRoom({required String name}) {
    return InRoom(
      name: name,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bootstrapping,
    required TResult Function(String? errorMessage) outRoom,
    required TResult Function(String name) inRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bootstrapping,
    TResult Function(String? errorMessage)? outRoom,
    TResult Function(String name)? inRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Bootstrapping value) bootstrapping,
    required TResult Function(OutRoom value) outRoom,
    required TResult Function(InRoom value) inRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Bootstrapping value)? bootstrapping,
    TResult Function(OutRoom value)? outRoom,
    TResult Function(InRoom value)? inRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class $BootstrappingCopyWith<$Res> {
  factory $BootstrappingCopyWith(
          Bootstrapping value, $Res Function(Bootstrapping) then) =
      _$BootstrappingCopyWithImpl<$Res>;
}

/// @nodoc
class _$BootstrappingCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $BootstrappingCopyWith<$Res> {
  _$BootstrappingCopyWithImpl(
      Bootstrapping _value, $Res Function(Bootstrapping) _then)
      : super(_value, (v) => _then(v as Bootstrapping));

  @override
  Bootstrapping get _value => super._value as Bootstrapping;
}

/// @nodoc

class _$Bootstrapping with DiagnosticableTreeMixin implements Bootstrapping {
  const _$Bootstrapping();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.bootstrapping()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AppState.bootstrapping'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Bootstrapping);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bootstrapping,
    required TResult Function(String? errorMessage) outRoom,
    required TResult Function(String name) inRoom,
  }) {
    return bootstrapping();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bootstrapping,
    TResult Function(String? errorMessage)? outRoom,
    TResult Function(String name)? inRoom,
    required TResult orElse(),
  }) {
    if (bootstrapping != null) {
      return bootstrapping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Bootstrapping value) bootstrapping,
    required TResult Function(OutRoom value) outRoom,
    required TResult Function(InRoom value) inRoom,
  }) {
    return bootstrapping(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Bootstrapping value)? bootstrapping,
    TResult Function(OutRoom value)? outRoom,
    TResult Function(InRoom value)? inRoom,
    required TResult orElse(),
  }) {
    if (bootstrapping != null) {
      return bootstrapping(this);
    }
    return orElse();
  }
}

abstract class Bootstrapping implements AppState {
  const factory Bootstrapping() = _$Bootstrapping;
}

/// @nodoc
abstract class $OutRoomCopyWith<$Res> {
  factory $OutRoomCopyWith(OutRoom value, $Res Function(OutRoom) then) =
      _$OutRoomCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class _$OutRoomCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $OutRoomCopyWith<$Res> {
  _$OutRoomCopyWithImpl(OutRoom _value, $Res Function(OutRoom) _then)
      : super(_value, (v) => _then(v as OutRoom));

  @override
  OutRoom get _value => super._value as OutRoom;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(OutRoom(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OutRoom with DiagnosticableTreeMixin implements OutRoom {
  const _$OutRoom({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.outRoom(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.outRoom'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OutRoom &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $OutRoomCopyWith<OutRoom> get copyWith =>
      _$OutRoomCopyWithImpl<OutRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bootstrapping,
    required TResult Function(String? errorMessage) outRoom,
    required TResult Function(String name) inRoom,
  }) {
    return outRoom(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bootstrapping,
    TResult Function(String? errorMessage)? outRoom,
    TResult Function(String name)? inRoom,
    required TResult orElse(),
  }) {
    if (outRoom != null) {
      return outRoom(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Bootstrapping value) bootstrapping,
    required TResult Function(OutRoom value) outRoom,
    required TResult Function(InRoom value) inRoom,
  }) {
    return outRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Bootstrapping value)? bootstrapping,
    TResult Function(OutRoom value)? outRoom,
    TResult Function(InRoom value)? inRoom,
    required TResult orElse(),
  }) {
    if (outRoom != null) {
      return outRoom(this);
    }
    return orElse();
  }
}

abstract class OutRoom implements AppState {
  const factory OutRoom({String? errorMessage}) = _$OutRoom;

  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutRoomCopyWith<OutRoom> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InRoomCopyWith<$Res> {
  factory $InRoomCopyWith(InRoom value, $Res Function(InRoom) then) =
      _$InRoomCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$InRoomCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $InRoomCopyWith<$Res> {
  _$InRoomCopyWithImpl(InRoom _value, $Res Function(InRoom) _then)
      : super(_value, (v) => _then(v as InRoom));

  @override
  InRoom get _value => super._value as InRoom;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(InRoom(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InRoom with DiagnosticableTreeMixin implements InRoom {
  const _$InRoom({required this.name});

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.inRoom(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.inRoom'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InRoom &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $InRoomCopyWith<InRoom> get copyWith =>
      _$InRoomCopyWithImpl<InRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bootstrapping,
    required TResult Function(String? errorMessage) outRoom,
    required TResult Function(String name) inRoom,
  }) {
    return inRoom(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bootstrapping,
    TResult Function(String? errorMessage)? outRoom,
    TResult Function(String name)? inRoom,
    required TResult orElse(),
  }) {
    if (inRoom != null) {
      return inRoom(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Bootstrapping value) bootstrapping,
    required TResult Function(OutRoom value) outRoom,
    required TResult Function(InRoom value) inRoom,
  }) {
    return inRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Bootstrapping value)? bootstrapping,
    TResult Function(OutRoom value)? outRoom,
    TResult Function(InRoom value)? inRoom,
    required TResult orElse(),
  }) {
    if (inRoom != null) {
      return inRoom(this);
    }
    return orElse();
  }
}

abstract class InRoom implements AppState {
  const factory InRoom({required String name}) = _$InRoom;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InRoomCopyWith<InRoom> get copyWith => throw _privateConstructorUsedError;
}
