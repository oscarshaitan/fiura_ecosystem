// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostEntityImpl _$$PostEntityImplFromJson(Map<String, dynamic> json) =>
    _$PostEntityImpl(
      id: json['id'] as String,
      redirectionUrl: json['redirectionUrl'] as String?,
      creationDate: json['creationDate'] as String,
      urlPhoto: json['urlPhoto'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$PostEntityImplToJson(_$PostEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'redirectionUrl': instance.redirectionUrl,
      'creationDate': instance.creationDate,
      'urlPhoto': instance.urlPhoto,
      'description': instance.description,
    };
