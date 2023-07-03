import 'package:freezed_annotation/freezed_annotation.dart';
part 'artist_entity.freezed.dart';
part 'artist_entity.g.dart';

@freezed
class ArtistEntity with _$ArtistEntity {
  factory ArtistEntity({
    required String id,
    required String name,
    required String about,
    required String urlPhoto,
    required List<String?> socialNetwork,
  }) = _ArtistEntity;

  factory ArtistEntity.fromJson(Map<String, dynamic> json) =>
      _$ArtistEntityFromJson(json);
}
