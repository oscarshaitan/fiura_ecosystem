// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'judge_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JudgeEntity2Impl _$$JudgeEntity2ImplFromJson(Map<String, dynamic> json) =>
    _$JudgeEntity2Impl(
      id: json['id'] as String,
      name: json['name'] as String,
      about: json['about'] as String,
      urlPhoto: json['urlPhoto'] as String,
      socialNetwork: (json['socialNetwork'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$JudgeEntity2ImplToJson(_$JudgeEntity2Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'about': instance.about,
      'urlPhoto': instance.urlPhoto,
      'socialNetwork': instance.socialNetwork,
    };
