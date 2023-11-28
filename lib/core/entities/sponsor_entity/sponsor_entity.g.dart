// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sponsor_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SponsorEntityImpl _$$SponsorEntityImplFromJson(Map<String, dynamic> json) =>
    _$SponsorEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      about: json['about'] as String,
      urlPhoto: json['urlPhoto'] as String,
      socialNetwork: (json['socialNetwork'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$SponsorEntityImplToJson(_$SponsorEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'about': instance.about,
      'urlPhoto': instance.urlPhoto,
      'socialNetwork': instance.socialNetwork,
    };
