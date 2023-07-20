import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    required String uid,
    required String name,
    required String email,
    required String photo,
  @Default(false) bool? admin,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
