// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamMemberEntityImpl _$$TeamMemberEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamMemberEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      about: json['about'] as String,
      socialNetwork: (json['socialNetwork'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$TeamMemberEntityImplToJson(
        _$TeamMemberEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'about': instance.about,
      'socialNetwork': instance.socialNetwork,
    };
