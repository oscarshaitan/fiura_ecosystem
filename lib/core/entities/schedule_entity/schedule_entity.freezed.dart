// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleEntity _$ScheduleEntityFromJson(Map<String, dynamic> json) {
  return _ScheduleEntity.fromJson(json);
}

/// @nodoc
mixin _$ScheduleEntity {
  String get id => throw _privateConstructorUsedError;
  String get urlPhoto => throw _privateConstructorUsedError;
  String get creationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleEntityCopyWith<ScheduleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEntityCopyWith<$Res> {
  factory $ScheduleEntityCopyWith(
          ScheduleEntity value, $Res Function(ScheduleEntity) then) =
      _$ScheduleEntityCopyWithImpl<$Res, ScheduleEntity>;
  @useResult
  $Res call({String id, String urlPhoto, String creationDate});
}

/// @nodoc
class _$ScheduleEntityCopyWithImpl<$Res, $Val extends ScheduleEntity>
    implements $ScheduleEntityCopyWith<$Res> {
  _$ScheduleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? urlPhoto = null,
    Object? creationDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      urlPhoto: null == urlPhoto
          ? _value.urlPhoto
          : urlPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleEntityCopyWith<$Res>
    implements $ScheduleEntityCopyWith<$Res> {
  factory _$$_ScheduleEntityCopyWith(
          _$_ScheduleEntity value, $Res Function(_$_ScheduleEntity) then) =
      __$$_ScheduleEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String urlPhoto, String creationDate});
}

/// @nodoc
class __$$_ScheduleEntityCopyWithImpl<$Res>
    extends _$ScheduleEntityCopyWithImpl<$Res, _$_ScheduleEntity>
    implements _$$_ScheduleEntityCopyWith<$Res> {
  __$$_ScheduleEntityCopyWithImpl(
      _$_ScheduleEntity _value, $Res Function(_$_ScheduleEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? urlPhoto = null,
    Object? creationDate = null,
  }) {
    return _then(_$_ScheduleEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      urlPhoto: null == urlPhoto
          ? _value.urlPhoto
          : urlPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleEntity
    with DiagnosticableTreeMixin
    implements _ScheduleEntity {
  _$_ScheduleEntity(
      {required this.id, required this.urlPhoto, required this.creationDate});

  factory _$_ScheduleEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleEntityFromJson(json);

  @override
  final String id;
  @override
  final String urlPhoto;
  @override
  final String creationDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleEntity(id: $id, urlPhoto: $urlPhoto, creationDate: $creationDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('urlPhoto', urlPhoto))
      ..add(DiagnosticsProperty('creationDate', creationDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.urlPhoto, urlPhoto) ||
                other.urlPhoto == urlPhoto) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, urlPhoto, creationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleEntityCopyWith<_$_ScheduleEntity> get copyWith =>
      __$$_ScheduleEntityCopyWithImpl<_$_ScheduleEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleEntityToJson(
      this,
    );
  }
}

abstract class _ScheduleEntity implements ScheduleEntity {
  factory _ScheduleEntity(
      {required final String id,
      required final String urlPhoto,
      required final String creationDate}) = _$_ScheduleEntity;

  factory _ScheduleEntity.fromJson(Map<String, dynamic> json) =
      _$_ScheduleEntity.fromJson;

  @override
  String get id;
  @override
  String get urlPhoto;
  @override
  String get creationDate;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleEntityCopyWith<_$_ScheduleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
