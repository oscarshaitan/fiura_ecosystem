// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeamMemberEntity _$$_TeamMemberEntityFromJson(Map<String, dynamic> json) =>
    _$_TeamMemberEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      about: json['about'] as String,
      socialNetwork: json['socialNetwork'] as String?,
    );

Map<String, dynamic> _$$_TeamMemberEntityToJson(_$_TeamMemberEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'about': instance.about,
      'socialNetwork': instance.socialNetwork,
    };
