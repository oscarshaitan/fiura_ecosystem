import 'package:fiura/core/entities/musician_entity/musician_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'artist_entity.freezed.dart';

@freezed
class ArtistEntity with _$ArtistEntity {
  factory ArtistEntity({
    required MusicianEntity musician,
  }) = _ArtistEntity;
}
