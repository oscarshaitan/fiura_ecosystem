// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArtistEntity _$$_ArtistEntityFromJson(Map<String, dynamic> json) =>
    _$_ArtistEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      about: json['about'] as String,
      socialNetwork: (json['socialNetwork'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_ArtistEntityToJson(_$_ArtistEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'about': instance.about,
      'socialNetwork': instance.socialNetwork,
    };
