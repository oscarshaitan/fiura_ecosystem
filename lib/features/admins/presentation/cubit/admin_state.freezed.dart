// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function(List<UserEntity> artists) loadData,
    required TResult Function() updateAdmins,
    required TResult Function(List<UserEntity> user) usersFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function(List<UserEntity> artists)? loadData,
    TResult? Function()? updateAdmins,
    TResult? Function(List<UserEntity> user)? usersFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function(List<UserEntity> artists)? loadData,
    TResult Function()? updateAdmins,
    TResult Function(List<UserEntity> user)? usersFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(LoadData value) loadData,
    required TResult Function(UpdateAdmins value) updateAdmins,
    required TResult Function(UsersFound value) usersFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(LoadData value)? loadData,
    TResult? Function(UpdateAdmins value)? updateAdmins,
    TResult? Function(UsersFound value)? usersFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(LoadData value)? loadData,
    TResult Function(UpdateAdmins value)? updateAdmins,
    TResult Function(UsersFound value)? usersFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStateCopyWith<$Res> {
  factory $AdminStateCopyWith(
          AdminState value, $Res Function(AdminState) then) =
      _$AdminStateCopyWithImpl<$Res, AdminState>;
}

/// @nodoc
class _$AdminStateCopyWithImpl<$Res, $Val extends AdminState>
    implements $AdminStateCopyWith<$Res> {
  _$AdminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AdminState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function(List<UserEntity> artists) loadData,
    required TResult Function() updateAdmins,
    required TResult Function(List<UserEntity> user) usersFound,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function(List<UserEntity> artists)? loadData,
    TResult? Function()? updateAdmins,
    TResult? Function(List<UserEntity> user)? usersFound,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function(List<UserEntity> artists)? loadData,
    TResult Function()? updateAdmins,
    TResult Function(List<UserEntity> user)? usersFound,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(LoadData value) loadData,
    required TResult Function(UpdateAdmins value) updateAdmins,
    required TResult Function(UsersFound value) usersFound,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(LoadData value)? loadData,
    TResult? Function(UpdateAdmins value)? updateAdmins,
    TResult? Function(UsersFound value)? usersFound,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(LoadData value)? loadData,
    TResult Function(UpdateAdmins value)? updateAdmins,
    TResult Function(UsersFound value)? usersFound,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AdminState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'AdminState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function(List<UserEntity> artists) loadData,
    required TResult Function() updateAdmins,
    required TResult Function(List<UserEntity> user) usersFound,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function(List<UserEntity> artists)? loadData,
    TResult? Function()? updateAdmins,
    TResult? Function(List<UserEntity> user)? usersFound,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function(List<UserEntity> artists)? loadData,
    TResult Function()? updateAdmins,
    TResult Function(List<UserEntity> user)? usersFound,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(LoadData value) loadData,
    required TResult Function(UpdateAdmins value) updateAdmins,
    required TResult Function(UsersFound value) usersFound,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(LoadData value)? loadData,
    TResult? Function(UpdateAdmins value)? updateAdmins,
    TResult? Function(UsersFound value)? usersFound,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(LoadData value)? loadData,
    TResult Function(UpdateAdmins value)? updateAdmins,
    TResult Function(UsersFound value)? usersFound,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AdminState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$Error(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AdminState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function(List<UserEntity> artists) loadData,
    required TResult Function() updateAdmins,
    required TResult Function(List<UserEntity> user) usersFound,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function(List<UserEntity> artists)? loadData,
    TResult? Function()? updateAdmins,
    TResult? Function(List<UserEntity> user)? usersFound,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function(List<UserEntity> artists)? loadData,
    TResult Function()? updateAdmins,
    TResult Function(List<UserEntity> user)? usersFound,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(LoadData value) loadData,
    required TResult Function(UpdateAdmins value) updateAdmins,
    required TResult Function(UsersFound value) usersFound,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(LoadData value)? loadData,
    TResult? Function(UpdateAdmins value)? updateAdmins,
    TResult? Function(UsersFound value)? usersFound,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(LoadData value)? loadData,
    TResult Function(UpdateAdmins value)? updateAdmins,
    TResult Function(UsersFound value)? usersFound,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AdminState {
  const factory Error(final String message) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Success implements Success {
  const _$Success();

  @override
  String toString() {
    return 'AdminState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function(List<UserEntity> artists) loadData,
    required TResult Function() updateAdmins,
    required TResult Function(List<UserEntity> user) usersFound,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function(List<UserEntity> artists)? loadData,
    TResult? Function()? updateAdmins,
    TResult? Function(List<UserEntity> user)? usersFound,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function(List<UserEntity> artists)? loadData,
    TResult Function()? updateAdmins,
    TResult Function(List<UserEntity> user)? usersFound,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(LoadData value) loadData,
    required TResult Function(UpdateAdmins value) updateAdmins,
    required TResult Function(UsersFound value) usersFound,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(LoadData value)? loadData,
    TResult? Function(UpdateAdmins value)? updateAdmins,
    TResult? Function(UsersFound value)? usersFound,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(LoadData value)? loadData,
    TResult Function(UpdateAdmins value)? updateAdmins,
    TResult Function(UsersFound value)? usersFound,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements AdminState {
  const factory Success() = _$Success;
}

/// @nodoc
abstract class _$$LoadDataCopyWith<$Res> {
  factory _$$LoadDataCopyWith(
          _$LoadData value, $Res Function(_$LoadData) then) =
      __$$LoadDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserEntity> artists});
}

/// @nodoc
class __$$LoadDataCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$LoadData>
    implements _$$LoadDataCopyWith<$Res> {
  __$$LoadDataCopyWithImpl(_$LoadData _value, $Res Function(_$LoadData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$LoadData(
      null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ));
  }
}

/// @nodoc

class _$LoadData implements LoadData {
  const _$LoadData(final List<UserEntity> artists) : _artists = artists;

  final List<UserEntity> _artists;
  @override
  List<UserEntity> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'AdminState.loadData(artists: $artists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadData &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDataCopyWith<_$LoadData> get copyWith =>
      __$$LoadDataCopyWithImpl<_$LoadData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function(List<UserEntity> artists) loadData,
    required TResult Function() updateAdmins,
    required TResult Function(List<UserEntity> user) usersFound,
  }) {
    return loadData(artists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function(List<UserEntity> artists)? loadData,
    TResult? Function()? updateAdmins,
    TResult? Function(List<UserEntity> user)? usersFound,
  }) {
    return loadData?.call(artists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function(List<UserEntity> artists)? loadData,
    TResult Function()? updateAdmins,
    TResult Function(List<UserEntity> user)? usersFound,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(artists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(LoadData value) loadData,
    required TResult Function(UpdateAdmins value) updateAdmins,
    required TResult Function(UsersFound value) usersFound,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(LoadData value)? loadData,
    TResult? Function(UpdateAdmins value)? updateAdmins,
    TResult? Function(UsersFound value)? usersFound,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(LoadData value)? loadData,
    TResult Function(UpdateAdmins value)? updateAdmins,
    TResult Function(UsersFound value)? usersFound,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class LoadData implements AdminState {
  const factory LoadData(final List<UserEntity> artists) = _$LoadData;

  List<UserEntity> get artists;
  @JsonKey(ignore: true)
  _$$LoadDataCopyWith<_$LoadData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAdminsCopyWith<$Res> {
  factory _$$UpdateAdminsCopyWith(
          _$UpdateAdmins value, $Res Function(_$UpdateAdmins) then) =
      __$$UpdateAdminsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateAdminsCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$UpdateAdmins>
    implements _$$UpdateAdminsCopyWith<$Res> {
  __$$UpdateAdminsCopyWithImpl(
      _$UpdateAdmins _value, $Res Function(_$UpdateAdmins) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateAdmins implements UpdateAdmins {
  const _$UpdateAdmins();

  @override
  String toString() {
    return 'AdminState.updateAdmins()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateAdmins);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function(List<UserEntity> artists) loadData,
    required TResult Function() updateAdmins,
    required TResult Function(List<UserEntity> user) usersFound,
  }) {
    return updateAdmins();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function(List<UserEntity> artists)? loadData,
    TResult? Function()? updateAdmins,
    TResult? Function(List<UserEntity> user)? usersFound,
  }) {
    return updateAdmins?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function(List<UserEntity> artists)? loadData,
    TResult Function()? updateAdmins,
    TResult Function(List<UserEntity> user)? usersFound,
    required TResult orElse(),
  }) {
    if (updateAdmins != null) {
      return updateAdmins();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(LoadData value) loadData,
    required TResult Function(UpdateAdmins value) updateAdmins,
    required TResult Function(UsersFound value) usersFound,
  }) {
    return updateAdmins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(LoadData value)? loadData,
    TResult? Function(UpdateAdmins value)? updateAdmins,
    TResult? Function(UsersFound value)? usersFound,
  }) {
    return updateAdmins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(LoadData value)? loadData,
    TResult Function(UpdateAdmins value)? updateAdmins,
    TResult Function(UsersFound value)? usersFound,
    required TResult orElse(),
  }) {
    if (updateAdmins != null) {
      return updateAdmins(this);
    }
    return orElse();
  }
}

abstract class UpdateAdmins implements AdminState {
  const factory UpdateAdmins() = _$UpdateAdmins;
}

/// @nodoc
abstract class _$$UsersFoundCopyWith<$Res> {
  factory _$$UsersFoundCopyWith(
          _$UsersFound value, $Res Function(_$UsersFound) then) =
      __$$UsersFoundCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserEntity> user});
}

/// @nodoc
class __$$UsersFoundCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$UsersFound>
    implements _$$UsersFoundCopyWith<$Res> {
  __$$UsersFoundCopyWithImpl(
      _$UsersFound _value, $Res Function(_$UsersFound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UsersFound(
      null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ));
  }
}

/// @nodoc

class _$UsersFound implements UsersFound {
  const _$UsersFound(final List<UserEntity> user) : _user = user;

  final List<UserEntity> _user;
  @override
  List<UserEntity> get user {
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  String toString() {
    return 'AdminState.usersFound(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersFound &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersFoundCopyWith<_$UsersFound> get copyWith =>
      __$$UsersFoundCopyWithImpl<_$UsersFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function(List<UserEntity> artists) loadData,
    required TResult Function() updateAdmins,
    required TResult Function(List<UserEntity> user) usersFound,
  }) {
    return usersFound(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function(List<UserEntity> artists)? loadData,
    TResult? Function()? updateAdmins,
    TResult? Function(List<UserEntity> user)? usersFound,
  }) {
    return usersFound?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function(List<UserEntity> artists)? loadData,
    TResult Function()? updateAdmins,
    TResult Function(List<UserEntity> user)? usersFound,
    required TResult orElse(),
  }) {
    if (usersFound != null) {
      return usersFound(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
    required TResult Function(LoadData value) loadData,
    required TResult Function(UpdateAdmins value) updateAdmins,
    required TResult Function(UsersFound value) usersFound,
  }) {
    return usersFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
    TResult? Function(LoadData value)? loadData,
    TResult? Function(UpdateAdmins value)? updateAdmins,
    TResult? Function(UsersFound value)? usersFound,
  }) {
    return usersFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    TResult Function(LoadData value)? loadData,
    TResult Function(UpdateAdmins value)? updateAdmins,
    TResult Function(UsersFound value)? usersFound,
    required TResult orElse(),
  }) {
    if (usersFound != null) {
      return usersFound(this);
    }
    return orElse();
  }
}

abstract class UsersFound implements AdminState {
  const factory UsersFound(final List<UserEntity> user) = _$UsersFound;

  List<UserEntity> get user;
  @JsonKey(ignore: true)
  _$$UsersFoundCopyWith<_$UsersFound> get copyWith =>
      throw _privateConstructorUsedError;
}
