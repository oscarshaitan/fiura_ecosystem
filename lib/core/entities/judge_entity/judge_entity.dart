import 'package:fiura/core/entities/musician_entity/musician_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'judge_entity.freezed.dart';
part 'judge_entity.g.dart';

@freezed
class JudgeEntity with _$JudgeEntity {
  factory JudgeEntity({
    required MusicianEntity musician,
  }) = _JudgeEntity;
}

@freezed
class JudgeEntity2 with _$JudgeEntity2 {
  @With<MusicianEntity2>()
  factory JudgeEntity2({
    required String id,
    required String name,
    required String about,
    required String urlPhoto,
    required List<String?> socialNetwork,
  }) = _JudgeEntity2;
  final MusicianType type = MusicianType.judge;
  JudgeEntity2._();

  factory JudgeEntity2.fromJson(Map<String, dynamic> json) =>
      _$JudgeEntity2FromJson(json);
  factory JudgeEntity2.fromMusicianEntity(MusicianEntity2 musician) =>
      JudgeEntity2(
        id: musician.id,
        name: musician.name,
        about: musician.about,
        urlPhoto: musician.urlPhoto,
        socialNetwork: musician.socialNetwork,
      );
}
