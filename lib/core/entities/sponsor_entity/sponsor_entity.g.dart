// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sponsor_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SponsorEntity _$$_SponsorEntityFromJson(Map<String, dynamic> json) =>
    _$_SponsorEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      about: json['about'] as String,
      urlPhoto: json['urlPhoto'] as String,
      socialNetwork: (json['socialNetwork'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_SponsorEntityToJson(_$_SponsorEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'about': instance.about,
      'urlPhoto': instance.urlPhoto,
      'socialNetwork': instance.socialNetwork,
    };
