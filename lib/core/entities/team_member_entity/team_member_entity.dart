import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'team_member_entity.g.dart';
part 'team_member_entity.freezed.dart';

@freezed
class TeamMemberEntity with _$TeamMemberEntity {
  factory TeamMemberEntity({
    required String id,
    required String name,
    required String about,
    required List<String?> socialNetwork,
  }) = _TeamMemberEntity;

  factory TeamMemberEntity.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberEntityFromJson(json);
}