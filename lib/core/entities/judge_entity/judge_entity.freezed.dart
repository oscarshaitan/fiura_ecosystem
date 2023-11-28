// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'judge_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JudgeEntity {
  MusicianEntity get musician => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JudgeEntityCopyWith<JudgeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JudgeEntityCopyWith<$Res> {
  factory $JudgeEntityCopyWith(
          JudgeEntity value, $Res Function(JudgeEntity) then) =
      _$JudgeEntityCopyWithImpl<$Res, JudgeEntity>;
  @useResult
  $Res call({MusicianEntity musician});

  $MusicianEntityCopyWith<$Res> get musician;
}

/// @nodoc
class _$JudgeEntityCopyWithImpl<$Res, $Val extends JudgeEntity>
    implements $JudgeEntityCopyWith<$Res> {
  _$JudgeEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$JudgeEntityImplCopyWith<$Res>
    implements $JudgeEntityCopyWith<$Res> {
  factory _$$JudgeEntityImplCopyWith(
          _$JudgeEntityImpl value, $Res Function(_$JudgeEntityImpl) then) =
      __$$JudgeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MusicianEntity musician});

  @override
  $MusicianEntityCopyWith<$Res> get musician;
}

/// @nodoc
class __$$JudgeEntityImplCopyWithImpl<$Res>
    extends _$JudgeEntityCopyWithImpl<$Res, _$JudgeEntityImpl>
    implements _$$JudgeEntityImplCopyWith<$Res> {
  __$$JudgeEntityImplCopyWithImpl(
      _$JudgeEntityImpl _value, $Res Function(_$JudgeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musician = null,
  }) {
    return _then(_$JudgeEntityImpl(
      musician: null == musician
          ? _value.musician
          : musician // ignore: cast_nullable_to_non_nullable
              as MusicianEntity,
    ));
  }
}

/// @nodoc

class _$JudgeEntityImpl implements _JudgeEntity {
  _$JudgeEntityImpl({required this.musician});

  @override
  final MusicianEntity musician;

  @override
  String toString() {
    return 'JudgeEntity(musician: $musician)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JudgeEntityImpl &&
            (identical(other.musician, musician) ||
                other.musician == musician));
  }

  @override
  int get hashCode => Object.hash(runtimeType, musician);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JudgeEntityImplCopyWith<_$JudgeEntityImpl> get copyWith =>
      __$$JudgeEntityImplCopyWithImpl<_$JudgeEntityImpl>(this, _$identity);
}

abstract class _JudgeEntity implements JudgeEntity {
  factory _JudgeEntity({required final MusicianEntity musician}) =
      _$JudgeEntityImpl;

  @override
  MusicianEntity get musician;
  @override
  @JsonKey(ignore: true)
  _$$JudgeEntityImplCopyWith<_$JudgeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JudgeEntity2 _$JudgeEntity2FromJson(Map<String, dynamic> json) {
  return _JudgeEntity2.fromJson(json);
}

/// @nodoc
mixin _$JudgeEntity2 {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  String get urlPhoto => throw _privateConstructorUsedError;
  List<String?> get socialNetwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JudgeEntity2CopyWith<JudgeEntity2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JudgeEntity2CopyWith<$Res> {
  factory $JudgeEntity2CopyWith(
          JudgeEntity2 value, $Res Function(JudgeEntity2) then) =
      _$JudgeEntity2CopyWithImpl<$Res, JudgeEntity2>;
  @useResult
  $Res call(
      {String id,
      String name,
      String about,
      String urlPhoto,
      List<String?> socialNetwork});
}

/// @nodoc
class _$JudgeEntity2CopyWithImpl<$Res, $Val extends JudgeEntity2>
    implements $JudgeEntity2CopyWith<$Res> {
  _$JudgeEntity2CopyWithImpl(this._value, this._then);

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
abstract class _$$JudgeEntity2ImplCopyWith<$Res>
    implements $JudgeEntity2CopyWith<$Res> {
  factory _$$JudgeEntity2ImplCopyWith(
          _$JudgeEntity2Impl value, $Res Function(_$JudgeEntity2Impl) then) =
      __$$JudgeEntity2ImplCopyWithImpl<$Res>;
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
class __$$JudgeEntity2ImplCopyWithImpl<$Res>
    extends _$JudgeEntity2CopyWithImpl<$Res, _$JudgeEntity2Impl>
    implements _$$JudgeEntity2ImplCopyWith<$Res> {
  __$$JudgeEntity2ImplCopyWithImpl(
      _$JudgeEntity2Impl _value, $Res Function(_$JudgeEntity2Impl) _then)
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
    return _then(_$JudgeEntity2Impl(
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
class _$JudgeEntity2Impl extends _JudgeEntity2 with MusicianEntity2 {
  _$JudgeEntity2Impl(
      {required this.id,
      required this.name,
      required this.about,
      required this.urlPhoto,
      required final List<String?> socialNetwork})
      : _socialNetwork = socialNetwork,
        super._();

  factory _$JudgeEntity2Impl.fromJson(Map<String, dynamic> json) =>
      _$$JudgeEntity2ImplFromJson(json);

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
    return 'JudgeEntity2(id: $id, name: $name, about: $about, urlPhoto: $urlPhoto, socialNetwork: $socialNetwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JudgeEntity2Impl &&
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
  _$$JudgeEntity2ImplCopyWith<_$JudgeEntity2Impl> get copyWith =>
      __$$JudgeEntity2ImplCopyWithImpl<_$JudgeEntity2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JudgeEntity2ImplToJson(
      this,
    );
  }
}

abstract class _JudgeEntity2 extends JudgeEntity2 implements MusicianEntity2 {
  factory _JudgeEntity2(
      {required final String id,
      required final String name,
      required final String about,
      required final String urlPhoto,
      required final List<String?> socialNetwork}) = _$JudgeEntity2Impl;
  _JudgeEntity2._() : super._();

  factory _JudgeEntity2.fromJson(Map<String, dynamic> json) =
      _$JudgeEntity2Impl.fromJson;

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
  _$$JudgeEntity2ImplCopyWith<_$JudgeEntity2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
