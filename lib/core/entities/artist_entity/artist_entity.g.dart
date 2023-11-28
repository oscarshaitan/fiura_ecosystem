// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistEntity2Impl _$$ArtistEntity2ImplFromJson(Map<String, dynamic> json) =>
    _$ArtistEntity2Impl(
      id: json['id'] as String,
      name: json['name'] as String,
      about: json['about'] as String,
      urlPhoto: json['urlPhoto'] as String,
      socialNetwork: (json['socialNetwork'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$ArtistEntity2ImplToJson(_$ArtistEntity2Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'about': instance.about,
      'urlPhoto': instance.urlPhoto,
      'socialNetwork': instance.socialNetwork,
    };
