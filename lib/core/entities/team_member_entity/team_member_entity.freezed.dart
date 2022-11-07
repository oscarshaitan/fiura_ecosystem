// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'team_member_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeamMemberEntity _$TeamMemberEntityFromJson(Map<String, dynamic> json) {
  return _TeamMemberEntity.fromJson(json);
}

/// @nodoc
mixin _$TeamMemberEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  String? get socialNetwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamMemberEntityCopyWith<TeamMemberEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberEntityCopyWith<$Res> {
  factory $TeamMemberEntityCopyWith(
          TeamMemberEntity value, $Res Function(TeamMemberEntity) then) =
      _$TeamMemberEntityCopyWithImpl<$Res, TeamMemberEntity>;
  @useResult
  $Res call({String id, String name, String about, String? socialNetwork});
}

/// @nodoc
class _$TeamMemberEntityCopyWithImpl<$Res, $Val extends TeamMemberEntity>
    implements $TeamMemberEntityCopyWith<$Res> {
  _$TeamMemberEntityCopyWithImpl(this._value, this._then);

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
    Object? socialNetwork = freezed,
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
      socialNetwork: freezed == socialNetwork
          ? _value.socialNetwork
          : socialNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeamMemberEntityCopyWith<$Res>
    implements $TeamMemberEntityCopyWith<$Res> {
  factory _$$_TeamMemberEntityCopyWith(
          _$_TeamMemberEntity value, $Res Function(_$_TeamMemberEntity) then) =
      __$$_TeamMemberEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String about, String? socialNetwork});
}

/// @nodoc
class __$$_TeamMemberEntityCopyWithImpl<$Res>
    extends _$TeamMemberEntityCopyWithImpl<$Res, _$_TeamMemberEntity>
    implements _$$_TeamMemberEntityCopyWith<$Res> {
  __$$_TeamMemberEntityCopyWithImpl(
      _$_TeamMemberEntity _value, $Res Function(_$_TeamMemberEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? about = null,
    Object? socialNetwork = freezed,
  }) {
    return _then(_$_TeamMemberEntity(
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
      socialNetwork: freezed == socialNetwork
          ? _value.socialNetwork
          : socialNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeamMemberEntity
    with DiagnosticableTreeMixin
    implements _TeamMemberEntity {
  _$_TeamMemberEntity(
      {required this.id,
      required this.name,
      required this.about,
      required this.socialNetwork});

  factory _$_TeamMemberEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TeamMemberEntityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String about;
  @override
  final String? socialNetwork;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TeamMemberEntity(id: $id, name: $name, about: $about, socialNetwork: $socialNetwork)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TeamMemberEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('socialNetwork', socialNetwork));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeamMemberEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.socialNetwork, socialNetwork) ||
                other.socialNetwork == socialNetwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, about, socialNetwork);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeamMemberEntityCopyWith<_$_TeamMemberEntity> get copyWith =>
      __$$_TeamMemberEntityCopyWithImpl<_$_TeamMemberEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamMemberEntityToJson(
      this,
    );
  }
}

abstract class _TeamMemberEntity implements TeamMemberEntity {
  factory _TeamMemberEntity(
      {required final String id,
      required final String name,
      required final String about,
      required final String? socialNetwork}) = _$_TeamMemberEntity;

  factory _TeamMemberEntity.fromJson(Map<String, dynamic> json) =
      _$_TeamMemberEntity.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get about;
  @override
  String? get socialNetwork;
  @override
  @JsonKey(ignore: true)
  _$$_TeamMemberEntityCopyWith<_$_TeamMemberEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
