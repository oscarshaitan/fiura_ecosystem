// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sponsor_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SponsorEntity _$SponsorEntityFromJson(Map<String, dynamic> json) {
  return _SponsorEntity.fromJson(json);
}

/// @nodoc
mixin _$SponsorEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  String get urlPhoto => throw _privateConstructorUsedError;
  List<String?> get socialNetwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SponsorEntityCopyWith<SponsorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorEntityCopyWith<$Res> {
  factory $SponsorEntityCopyWith(
          SponsorEntity value, $Res Function(SponsorEntity) then) =
      _$SponsorEntityCopyWithImpl<$Res, SponsorEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String about,
      String urlPhoto,
      List<String?> socialNetwork});
}

/// @nodoc
class _$SponsorEntityCopyWithImpl<$Res, $Val extends SponsorEntity>
    implements $SponsorEntityCopyWith<$Res> {
  _$SponsorEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$SponsorEntityImplCopyWith<$Res>
    implements $SponsorEntityCopyWith<$Res> {
  factory _$$SponsorEntityImplCopyWith(
          _$SponsorEntityImpl value, $Res Function(_$SponsorEntityImpl) then) =
      __$$SponsorEntityImplCopyWithImpl<$Res>;
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
class __$$SponsorEntityImplCopyWithImpl<$Res>
    extends _$SponsorEntityCopyWithImpl<$Res, _$SponsorEntityImpl>
    implements _$$SponsorEntityImplCopyWith<$Res> {
  __$$SponsorEntityImplCopyWithImpl(
      _$SponsorEntityImpl _value, $Res Function(_$SponsorEntityImpl) _then)
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
    return _then(_$SponsorEntityImpl(
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
class _$SponsorEntityImpl
    with DiagnosticableTreeMixin
    implements _SponsorEntity {
  _$SponsorEntityImpl(
      {required this.id,
      required this.name,
      required this.about,
      required this.urlPhoto,
      required final List<String?> socialNetwork})
      : _socialNetwork = socialNetwork;

  factory _$SponsorEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorEntityImplFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SponsorEntity(id: $id, name: $name, about: $about, urlPhoto: $urlPhoto, socialNetwork: $socialNetwork)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SponsorEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('urlPhoto', urlPhoto))
      ..add(DiagnosticsProperty('socialNetwork', socialNetwork));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorEntityImpl &&
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
  _$$SponsorEntityImplCopyWith<_$SponsorEntityImpl> get copyWith =>
      __$$SponsorEntityImplCopyWithImpl<_$SponsorEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorEntityImplToJson(
      this,
    );
  }
}

abstract class _SponsorEntity implements SponsorEntity {
  factory _SponsorEntity(
      {required final String id,
      required final String name,
      required final String about,
      required final String urlPhoto,
      required final List<String?> socialNetwork}) = _$SponsorEntityImpl;

  factory _SponsorEntity.fromJson(Map<String, dynamic> json) =
      _$SponsorEntityImpl.fromJson;

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
  _$$SponsorEntityImplCopyWith<_$SponsorEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
