// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'judge_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JudgeEntity _$JudgeEntityFromJson(Map<String, dynamic> json) {
  return _JudgeEntity.fromJson(json);
}

/// @nodoc
mixin _$JudgeEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  List<String?> get socialNetwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call(
      {String id, String name, String about, List<String?> socialNetwork});
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
abstract class _$$_JudgeEntityCopyWith<$Res>
    implements $JudgeEntityCopyWith<$Res> {
  factory _$$_JudgeEntityCopyWith(
          _$_JudgeEntity value, $Res Function(_$_JudgeEntity) then) =
      __$$_JudgeEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String about, List<String?> socialNetwork});
}

/// @nodoc
class __$$_JudgeEntityCopyWithImpl<$Res>
    extends _$JudgeEntityCopyWithImpl<$Res, _$_JudgeEntity>
    implements _$$_JudgeEntityCopyWith<$Res> {
  __$$_JudgeEntityCopyWithImpl(
      _$_JudgeEntity _value, $Res Function(_$_JudgeEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? about = null,
    Object? socialNetwork = null,
  }) {
    return _then(_$_JudgeEntity(
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
class _$_JudgeEntity with DiagnosticableTreeMixin implements _JudgeEntity {
  _$_JudgeEntity(
      {required this.id,
      required this.name,
      required this.about,
      required final List<String?> socialNetwork})
      : _socialNetwork = socialNetwork;

  factory _$_JudgeEntity.fromJson(Map<String, dynamic> json) =>
      _$$_JudgeEntityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String about;
  final List<String?> _socialNetwork;
  @override
  List<String?> get socialNetwork {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialNetwork);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JudgeEntity(id: $id, name: $name, about: $about, socialNetwork: $socialNetwork)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JudgeEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('socialNetwork', socialNetwork));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JudgeEntity &&
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
  _$$_JudgeEntityCopyWith<_$_JudgeEntity> get copyWith =>
      __$$_JudgeEntityCopyWithImpl<_$_JudgeEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JudgeEntityToJson(
      this,
    );
  }
}

abstract class _JudgeEntity implements JudgeEntity {
  factory _JudgeEntity(
      {required final String id,
      required final String name,
      required final String about,
      required final List<String?> socialNetwork}) = _$_JudgeEntity;

  factory _JudgeEntity.fromJson(Map<String, dynamic> json) =
      _$_JudgeEntity.fromJson;

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
  _$$_JudgeEntityCopyWith<_$_JudgeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
