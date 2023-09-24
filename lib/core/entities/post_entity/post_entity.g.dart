// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostEntity _$$_PostEntityFromJson(Map<String, dynamic> json) =>
    _$_PostEntity(
      id: json['id'] as String,
      redirectionUrl: json['redirectionUrl'] as String?,
      creationDate: json['creationDate'] as String,
      urlPhoto: json['urlPhoto'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_PostEntityToJson(_$_PostEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'redirectionUrl': instance.redirectionUrl,
      'creationDate': instance.creationDate,
      'urlPhoto': instance.urlPhoto,
      'description': instance.description,
    };
