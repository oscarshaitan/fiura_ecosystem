import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sponsor_entity.g.dart';
part 'sponsor_entity.freezed.dart';

@freezed
class SponsorEntity with _$SponsorEntity {
  factory SponsorEntity({
    required String id,
    required String name,
    required String about,
    required List<String?> socialNetwork,
  }) = _SponsorEntity;

  factory SponsorEntity.fromJson(Map<String, dynamic> json) =>
      _$SponsorEntityFromJson(json);
}