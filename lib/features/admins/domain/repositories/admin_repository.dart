import 'package:fiura_ecosystem/core/entities/user/user_entity.dart';

abstract class AdminRepository {
  Future<List<UserEntity>> getAdmins();
  Future<void> addAdmin(String uid);
  Future<void> deleteAdmin(String uid);
  Future<List<UserEntity>> searchUser(String email);
}
