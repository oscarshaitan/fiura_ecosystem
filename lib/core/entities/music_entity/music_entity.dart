import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'music_entity.freezed.dart';

@freezed
class Music with _$Music {
  factory Music({
    required String name,
    required String mediaUrl,
    required String thumbnailUrl,
  }) = _Music;
}