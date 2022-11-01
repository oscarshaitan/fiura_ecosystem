import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../music_entity/music_entity.dart';
part 'artist_entity.freezed.dart';

@freezed
class Artist with _$Artist {
  factory Artist({
    required String id,
    required String name,
    required String about,
    required String? socialNetwork,
    required List<String> photos,
    required List<Music> music,
  }) = _Artist;
}
