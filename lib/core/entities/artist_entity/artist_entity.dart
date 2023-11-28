import 'package:fiura/core/entities/musician_entity/musician_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'artist_entity.freezed.dart';
part 'artist_entity.g.dart';

@freezed
class ArtistEntity with _$ArtistEntity {
  factory ArtistEntity({
    required MusicianEntity musician,
  }) = _ArtistEntity;
}

@freezed
class ArtistEntity2 with _$ArtistEntity2 {
  @With<MusicianEntity2>()
  factory ArtistEntity2({
    required String id,
    required String name,
    required String about,
    required String urlPhoto,
    required List<String?> socialNetwork,
  }) = _ArtistEntity2;
  final MusicianType type = MusicianType.artist;
  ArtistEntity2._();

  factory ArtistEntity2.fromJson(Map<String, dynamic> json) =>
      _$ArtistEntity2FromJson(json);
  factory ArtistEntity2.fromMusicianEntity(MusicianEntity2 musician) =>
      ArtistEntity2(
        id: musician.id,
        name: musician.name,
        about: musician.about,
        urlPhoto: musician.urlPhoto,
        socialNetwork: musician.socialNetwork,
      );
}
