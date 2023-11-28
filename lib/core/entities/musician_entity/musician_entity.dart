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

abstract class MusicianEntity2 {
  String get id;
  String get name;
  String get about;
  String get urlPhoto;
  List<String?> get socialNetwork;
  MusicianType get type;
}

enum MusicianType { artist, judge }
