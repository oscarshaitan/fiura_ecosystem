part of 'splash_cubit.dart';

abstract class UserState {
  const UserState();
}

class Loading extends UserState {
  const Loading();
}

class Loaded extends UserState {
  const Loaded(this.user);
  final bool user;
}
