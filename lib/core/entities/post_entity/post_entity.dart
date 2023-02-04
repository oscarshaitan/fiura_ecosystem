import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_entity.g.dart';
part 'post_entity.freezed.dart';

@freezed
class PostEntity with _$PostEntity {
  factory PostEntity({
    required String id,
    String? redirectionUrl,
    required String urlPhoto,
    required String description,
  }) = _PostEntity;

  factory PostEntity.fromJson(Map<String, dynamic> json) =>
      _$PostEntityFromJson(json);
}