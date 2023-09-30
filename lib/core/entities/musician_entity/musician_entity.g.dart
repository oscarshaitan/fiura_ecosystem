// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'musician_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MusicianEntity _$$_MusicianEntityFromJson(Map<String, dynamic> json) =>
    _$_MusicianEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      about: json['about'] as String,
      urlPhoto: json['urlPhoto'] as String,
      socialNetwork: (json['socialNetwork'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_MusicianEntityToJson(_$_MusicianEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'about': instance.about,
      'urlPhoto': instance.urlPhoto,
      'socialNetwork': instance.socialNetwork,
    };
