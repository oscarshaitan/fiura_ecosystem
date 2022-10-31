// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'judge_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JudgeEntity _$$_JudgeEntityFromJson(Map<String, dynamic> json) =>
    _$_JudgeEntity(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      about: json['about'] as String? ?? '',
      socialNetwork: json['socialNetwork'] as String? ?? '',
    );

Map<String, dynamic> _$$_JudgeEntityToJson(_$_JudgeEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'about': instance.about,
      'socialNetwork': instance.socialNetwork,
    };
