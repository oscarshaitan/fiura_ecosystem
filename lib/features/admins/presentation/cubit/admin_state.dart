import 'package:fiura_ecosystem/core/entities/user/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'admin_state.freezed.dart';

@freezed
abstract class AdminState with _$AdminState {
  const factory AdminState.initial() = Initial;
  const factory AdminState.loading() = Loading;
  const factory AdminState.error(String message) = Error;
  const factory AdminState.success() = Success;
  const factory AdminState.loadData(List<UserEntity> artists) = LoadData;
  const factory AdminState.updateAdmins() = UpdateAdmins;
  const factory AdminState.usersFound(List<UserEntity> user) = UsersFound;
}
