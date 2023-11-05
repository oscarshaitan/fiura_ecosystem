// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'musician_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MusicianEntityImpl _$$MusicianEntityImplFromJson(Map<String, dynamic> json) =>
    _$MusicianEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      about: json['about'] as String,
      urlPhoto: json['urlPhoto'] as String,
      socialNetwork: (json['socialNetwork'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$MusicianEntityImplToJson(
        _$MusicianEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'about': instance.about,
      'urlPhoto': instance.urlPhoto,
      'socialNetwork': instance.socialNetwork,
    };
