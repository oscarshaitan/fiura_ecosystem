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

class _$JudgeEntityImpl with DiagnosticableTreeMixin implements _JudgeEntity {
  _$JudgeEntityImpl({required this.musician});

  @override
  final MusicianEntity musician;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JudgeEntity(musician: $musician)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JudgeEntity'))
      ..add(DiagnosticsProperty('musician', musician));
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
