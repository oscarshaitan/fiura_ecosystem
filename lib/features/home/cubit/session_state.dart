part of 'session_cubit.dart';

@freezed
class SessionState with _$SessionState {
  const factory SessionState.initial({UserEntity? currentUser}) = _Initial;

  const factory SessionState.userFetched({UserEntity? currentUser}) =
      UserFetched;

  const factory SessionState.error({UserEntity? currentUser}) = Error;
}

extension SessionStateX on SessionState {
  bool get isAdmin => (currentUser != null && currentUser!.admin!);
}
