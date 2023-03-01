// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Music {
  String get name => throw _privateConstructorUsedError;
  String get mediaUrl => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MusicCopyWith<Music> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicCopyWith<$Res> {
  factory $MusicCopyWith(Music value, $Res Function(Music) then) =
      _$MusicCopyWithImpl<$Res, Music>;
  @useResult
  $Res call({String name, String mediaUrl, String thumbnailUrl});
}

/// @nodoc
class _$MusicCopyWithImpl<$Res, $Val extends Music>
    implements $MusicCopyWith<$Res> {
  _$MusicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mediaUrl = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: null == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MusicCopyWith<$Res> implements $MusicCopyWith<$Res> {
  factory _$$_MusicCopyWith(_$_Music value, $Res Function(_$_Music) then) =
      __$$_MusicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String mediaUrl, String thumbnailUrl});
}

/// @nodoc
class __$$_MusicCopyWithImpl<$Res> extends _$MusicCopyWithImpl<$Res, _$_Music>
    implements _$$_MusicCopyWith<$Res> {
  __$$_MusicCopyWithImpl(_$_Music _value, $Res Function(_$_Music) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mediaUrl = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_$_Music(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: null == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Music with DiagnosticableTreeMixin implements _Music {
  _$_Music(
      {required this.name, required this.mediaUrl, required this.thumbnailUrl});

  @override
  final String name;
  @override
  final String mediaUrl;
  @override
  final String thumbnailUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Music(name: $name, mediaUrl: $mediaUrl, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Music'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('mediaUrl', mediaUrl))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Music &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mediaUrl, mediaUrl) ||
                other.mediaUrl == mediaUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, mediaUrl, thumbnailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MusicCopyWith<_$_Music> get copyWith =>
      __$$_MusicCopyWithImpl<_$_Music>(this, _$identity);
}

abstract class _Music implements Music {
  factory _Music(
      {required final String name,
      required final String mediaUrl,
      required final String thumbnailUrl}) = _$_Music;

  @override
  String get name;
  @override
  String get mediaUrl;
  @override
  String get thumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$$_MusicCopyWith<_$_Music> get copyWith =>
      throw _privateConstructorUsedError;
}
