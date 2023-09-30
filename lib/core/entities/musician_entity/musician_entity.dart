import 'package:freezed_annotation/freezed_annotation.dart';
part 'musician_entity.freezed.dart';
part 'musician_entity.g.dart';

@freezed
class MusicianEntity with _$MusicianEntity {
  factory MusicianEntity({
    required String id,
    required String name,
    required String about,
    required String urlPhoto,
    required List<String?> socialNetwork,
  }) = _MusicianEntity;

  factory MusicianEntity.fromJson(Map<String, dynamic> json) =>
      _$MusicianEntityFromJson(json);
}
