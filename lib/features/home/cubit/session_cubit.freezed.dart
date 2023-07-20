// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionState {
  UserEntity? get currentUser => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? currentUser) initial,
    required TResult Function(UserEntity? currentUser) userFetched,
    required TResult Function(UserEntity? currentUser) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? currentUser)? initial,
    TResult? Function(UserEntity? currentUser)? userFetched,
    TResult? Function(UserEntity? currentUser)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? currentUser)? initial,
    TResult Function(UserEntity? currentUser)? userFetched,
    TResult Function(UserEntity? currentUser)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserFetched value) userFetched,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserFetched value)? userFetched,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserFetched value)? userFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionStateCopyWith<SessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionStateCopyWith<$Res> {
  factory $SessionStateCopyWith(
          SessionState value, $Res Function(SessionState) then) =
      _$SessionStateCopyWithImpl<$Res, SessionState>;
  @useResult
  $Res call({UserEntity? currentUser});

  $UserEntityCopyWith<$Res>? get currentUser;
}

/// @nodoc
class _$SessionStateCopyWithImpl<$Res, $Val extends SessionState>
    implements $SessionStateCopyWith<$Res> {
  _$SessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(_value.copyWith(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $SessionStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity? currentUser});

  @override
  $UserEntityCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(_$_Initial(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.currentUser});

  @override
  final UserEntity? currentUser;

  @override
  String toString() {
    return 'SessionState.initial(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? currentUser) initial,
    required TResult Function(UserEntity? currentUser) userFetched,
    required TResult Function(UserEntity? currentUser) error,
  }) {
    return initial(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? currentUser)? initial,
    TResult? Function(UserEntity? currentUser)? userFetched,
    TResult? Function(UserEntity? currentUser)? error,
  }) {
    return initial?.call(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? currentUser)? initial,
    TResult Function(UserEntity? currentUser)? userFetched,
    TResult Function(UserEntity? currentUser)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserFetched value) userFetched,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserFetched value)? userFetched,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserFetched value)? userFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SessionState {
  const factory _Initial({final UserEntity? currentUser}) = _$_Initial;

  @override
  UserEntity? get currentUser;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserFetchedCopyWith<$Res>
    implements $SessionStateCopyWith<$Res> {
  factory _$$UserFetchedCopyWith(
          _$UserFetched value, $Res Function(_$UserFetched) then) =
      __$$UserFetchedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity? currentUser});

  @override
  $UserEntityCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$UserFetchedCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$UserFetched>
    implements _$$UserFetchedCopyWith<$Res> {
  __$$UserFetchedCopyWithImpl(
      _$UserFetched _value, $Res Function(_$UserFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(_$UserFetched(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc

class _$UserFetched implements UserFetched {
  const _$UserFetched({this.currentUser});

  @override
  final UserEntity? currentUser;

  @override
  String toString() {
    return 'SessionState.userFetched(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFetched &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFetchedCopyWith<_$UserFetched> get copyWith =>
      __$$UserFetchedCopyWithImpl<_$UserFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? currentUser) initial,
    required TResult Function(UserEntity? currentUser) userFetched,
    required TResult Function(UserEntity? currentUser) error,
  }) {
    return userFetched(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? currentUser)? initial,
    TResult? Function(UserEntity? currentUser)? userFetched,
    TResult? Function(UserEntity? currentUser)? error,
  }) {
    return userFetched?.call(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? currentUser)? initial,
    TResult Function(UserEntity? currentUser)? userFetched,
    TResult Function(UserEntity? currentUser)? error,
    required TResult orElse(),
  }) {
    if (userFetched != null) {
      return userFetched(currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserFetched value) userFetched,
    required TResult Function(Error value) error,
  }) {
    return userFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserFetched value)? userFetched,
    TResult? Function(Error value)? error,
  }) {
    return userFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserFetched value)? userFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (userFetched != null) {
      return userFetched(this);
    }
    return orElse();
  }
}

abstract class UserFetched implements SessionState {
  const factory UserFetched({final UserEntity? currentUser}) = _$UserFetched;

  @override
  UserEntity? get currentUser;
  @override
  @JsonKey(ignore: true)
  _$$UserFetchedCopyWith<_$UserFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity? currentUser});

  @override
  $UserEntityCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(_$Error(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.currentUser});

  @override
  final UserEntity? currentUser;

  @override
  String toString() {
    return 'SessionState.error(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? currentUser) initial,
    required TResult Function(UserEntity? currentUser) userFetched,
    required TResult Function(UserEntity? currentUser) error,
  }) {
    return error(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? currentUser)? initial,
    TResult? Function(UserEntity? currentUser)? userFetched,
    TResult? Function(UserEntity? currentUser)? error,
  }) {
    return error?.call(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? currentUser)? initial,
    TResult Function(UserEntity? currentUser)? userFetched,
    TResult Function(UserEntity? currentUser)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserFetched value) userFetched,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserFetched value)? userFetched,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserFetched value)? userFetched,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SessionState {
  const factory Error({final UserEntity? currentUser}) = _$Error;

  @override
  UserEntity? get currentUser;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
