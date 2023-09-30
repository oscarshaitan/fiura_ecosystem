// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'musician_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MusicianEntity _$MusicianEntityFromJson(Map<String, dynamic> json) {
  return _MusicianEntity.fromJson(json);
}

/// @nodoc
mixin _$MusicianEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  String get urlPhoto => throw _privateConstructorUsedError;
  List<String?> get socialNetwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicianEntityCopyWith<MusicianEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicianEntityCopyWith<$Res> {
  factory $MusicianEntityCopyWith(
          MusicianEntity value, $Res Function(MusicianEntity) then) =
      _$MusicianEntityCopyWithImpl<$Res, MusicianEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String about,
      String urlPhoto,
      List<String?> socialNetwork});
}

/// @nodoc
class _$MusicianEntityCopyWithImpl<$Res, $Val extends MusicianEntity>
    implements $MusicianEntityCopyWith<$Res> {
  _$MusicianEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? about = null,
    Object? urlPhoto = null,
    Object? socialNetwork = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      urlPhoto: null == urlPhoto
          ? _value.urlPhoto
          : urlPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      socialNetwork: null == socialNetwork
          ? _value.socialNetwork
          : socialNetwork // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MusicianEntityCopyWith<$Res>
    implements $MusicianEntityCopyWith<$Res> {
  factory _$$_MusicianEntityCopyWith(
          _$_MusicianEntity value, $Res Function(_$_MusicianEntity) then) =
      __$$_MusicianEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String about,
      String urlPhoto,
      List<String?> socialNetwork});
}

/// @nodoc
class __$$_MusicianEntityCopyWithImpl<$Res>
    extends _$MusicianEntityCopyWithImpl<$Res, _$_MusicianEntity>
    implements _$$_MusicianEntityCopyWith<$Res> {
  __$$_MusicianEntityCopyWithImpl(
      _$_MusicianEntity _value, $Res Function(_$_MusicianEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? about = null,
    Object? urlPhoto = null,
    Object? socialNetwork = null,
  }) {
    return _then(_$_MusicianEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      urlPhoto: null == urlPhoto
          ? _value.urlPhoto
          : urlPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      socialNetwork: null == socialNetwork
          ? _value._socialNetwork
          : socialNetwork // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MusicianEntity implements _MusicianEntity {
  _$_MusicianEntity(
      {required this.id,
      required this.name,
      required this.about,
      required this.urlPhoto,
      required final List<String?> socialNetwork})
      : _socialNetwork = socialNetwork;

  factory _$_MusicianEntity.fromJson(Map<String, dynamic> json) =>
      _$$_MusicianEntityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String about;
  @override
  final String urlPhoto;
  final List<String?> _socialNetwork;
  @override
  List<String?> get socialNetwork {
    if (_socialNetwork is EqualUnmodifiableListView) return _socialNetwork;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialNetwork);
  }

  @override
  String toString() {
    return 'MusicianEntity(id: $id, name: $name, about: $about, urlPhoto: $urlPhoto, socialNetwork: $socialNetwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MusicianEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.urlPhoto, urlPhoto) ||
                other.urlPhoto == urlPhoto) &&
            const DeepCollectionEquality()
                .equals(other._socialNetwork, _socialNetwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, about, urlPhoto,
      const DeepCollectionEquality().hash(_socialNetwork));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MusicianEntityCopyWith<_$_MusicianEntity> get copyWith =>
      __$$_MusicianEntityCopyWithImpl<_$_MusicianEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MusicianEntityToJson(
      this,
    );
  }
}

abstract class _MusicianEntity implements MusicianEntity {
  factory _MusicianEntity(
      {required final String id,
      required final String name,
      required final String about,
      required final String urlPhoto,
      required final List<String?> socialNetwork}) = _$_MusicianEntity;

  factory _MusicianEntity.fromJson(Map<String, dynamic> json) =
      _$_MusicianEntity.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get about;
  @override
  String get urlPhoto;
  @override
  List<String?> get socialNetwork;
  @override
  @JsonKey(ignore: true)
  _$$_MusicianEntityCopyWith<_$_MusicianEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
