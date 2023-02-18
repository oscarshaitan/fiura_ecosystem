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
      {String id, String name, String about, List<String?> socialNetwork});
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
      socialNetwork: null == socialNetwork
          ? _value.socialNetwork
          : socialNetwork // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SponsorEntityCopyWith<$Res>
    implements $SponsorEntityCopyWith<$Res> {
  factory _$$_SponsorEntityCopyWith(
          _$_SponsorEntity value, $Res Function(_$_SponsorEntity) then) =
      __$$_SponsorEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String about, List<String?> socialNetwork});
}

/// @nodoc
class __$$_SponsorEntityCopyWithImpl<$Res>
    extends _$SponsorEntityCopyWithImpl<$Res, _$_SponsorEntity>
    implements _$$_SponsorEntityCopyWith<$Res> {
  __$$_SponsorEntityCopyWithImpl(
      _$_SponsorEntity _value, $Res Function(_$_SponsorEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? about = null,
    Object? socialNetwork = null,
  }) {
    return _then(_$_SponsorEntity(
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
      socialNetwork: null == socialNetwork
          ? _value._socialNetwork
          : socialNetwork // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SponsorEntity with DiagnosticableTreeMixin implements _SponsorEntity {
  _$_SponsorEntity(
      {required this.id,
      required this.name,
      required this.about,
      required final List<String?> socialNetwork})
      : _socialNetwork = socialNetwork;

  factory _$_SponsorEntity.fromJson(Map<String, dynamic> json) =>
      _$$_SponsorEntityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String about;
  final List<String?> _socialNetwork;
  @override
  List<String?> get socialNetwork {
    if (_socialNetwork is EqualUnmodifiableListView) return _socialNetwork;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialNetwork);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SponsorEntity(id: $id, name: $name, about: $about, socialNetwork: $socialNetwork)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SponsorEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('socialNetwork', socialNetwork));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SponsorEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.about, about) || other.about == about) &&
            const DeepCollectionEquality()
                .equals(other._socialNetwork, _socialNetwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, about,
      const DeepCollectionEquality().hash(_socialNetwork));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SponsorEntityCopyWith<_$_SponsorEntity> get copyWith =>
      __$$_SponsorEntityCopyWithImpl<_$_SponsorEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SponsorEntityToJson(
      this,
    );
  }
}

abstract class _SponsorEntity implements SponsorEntity {
  factory _SponsorEntity(
      {required final String id,
      required final String name,
      required final String about,
      required final List<String?> socialNetwork}) = _$_SponsorEntity;

  factory _SponsorEntity.fromJson(Map<String, dynamic> json) =
      _$_SponsorEntity.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get about;
  @override
  List<String?> get socialNetwork;
  @override
  @JsonKey(ignore: true)
  _$$_SponsorEntityCopyWith<_$_SponsorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
