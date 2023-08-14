import 'package:fiura_ecosystem/core/entities/user/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.error(String message) = Error;
  const factory LoginState.success() = Success;
  const factory LoginState.loading() = Loading;
  const factory LoginState.userFetched(UserEntity user) = UserFetched;
}
