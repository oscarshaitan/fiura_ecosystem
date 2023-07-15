// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      uid: json['uid'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      photo: json['photo'] as String,
      admin: json['admin'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'photo': instance.photo,
      'admin': instance.admin,
    };
