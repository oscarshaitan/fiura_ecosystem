// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArtistEntity {
  MusicianEntity get musician => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistEntityCopyWith<ArtistEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistEntityCopyWith<$Res> {
  factory $ArtistEntityCopyWith(
          ArtistEntity value, $Res Function(ArtistEntity) then) =
      _$ArtistEntityCopyWithImpl<$Res, ArtistEntity>;
  @useResult
  $Res call({MusicianEntity musician});

  $MusicianEntityCopyWith<$Res> get musician;
}

/// @nodoc
class _$ArtistEntityCopyWithImpl<$Res, $Val extends ArtistEntity>
    implements $ArtistEntityCopyWith<$Res> {
  _$ArtistEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musician = null,
  }) {
    return _then(_value.copyWith(
      musician: null == musician
          ? _value.musician
          : musician // ignore: cast_nullable_to_non_nullable
              as MusicianEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MusicianEntityCopyWith<$Res> get musician {
    return $MusicianEntityCopyWith<$Res>(_value.musician, (value) {
      return _then(_value.copyWith(musician: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArtistEntityCopyWith<$Res>
    implements $ArtistEntityCopyWith<$Res> {
  factory _$$_ArtistEntityCopyWith(
          _$_ArtistEntity value, $Res Function(_$_ArtistEntity) then) =
      __$$_ArtistEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MusicianEntity musician});

  @override
  $MusicianEntityCopyWith<$Res> get musician;
}

/// @nodoc
class __$$_ArtistEntityCopyWithImpl<$Res>
    extends _$ArtistEntityCopyWithImpl<$Res, _$_ArtistEntity>
    implements _$$_ArtistEntityCopyWith<$Res> {
  __$$_ArtistEntityCopyWithImpl(
      _$_ArtistEntity _value, $Res Function(_$_ArtistEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musician = null,
  }) {
    return _then(_$_ArtistEntity(
      musician: null == musician
          ? _value.musician
          : musician // ignore: cast_nullable_to_non_nullable
              as MusicianEntity,
    ));
  }
}

/// @nodoc

class _$_ArtistEntity implements _ArtistEntity {
  _$_ArtistEntity({required this.musician});

  @override
  final MusicianEntity musician;

  @override
  String toString() {
    return 'ArtistEntity(musician: $musician)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArtistEntity &&
            (identical(other.musician, musician) ||
                other.musician == musician));
  }

  @override
  int get hashCode => Object.hash(runtimeType, musician);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArtistEntityCopyWith<_$_ArtistEntity> get copyWith =>
      __$$_ArtistEntityCopyWithImpl<_$_ArtistEntity>(this, _$identity);
}

abstract class _ArtistEntity implements ArtistEntity {
  factory _ArtistEntity({required final MusicianEntity musician}) =
      _$_ArtistEntity;

  @override
  MusicianEntity get musician;
  @override
  @JsonKey(ignore: true)
  _$$_ArtistEntityCopyWith<_$_ArtistEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
