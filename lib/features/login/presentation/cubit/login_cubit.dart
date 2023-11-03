import 'package:fiura/features/home/repository/user_respository.dart';
import 'package:fiura/features/login/presentation/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/login_repository.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepository, this._userRepository) : super(const Initial());

  final LoginRepository _loginRepository;
  final UserRepository _userRepository;

  void login() async {
    emit(const LoginState.loading());
    final result = await _loginRepository.signIn();
    if (result.user != null) {
      Future.delayed(const Duration(seconds: 1)).then((value) {
        emit(const LoginState.success());
      });
    } else {
      emit(const Error('Error'));
    }
  }

  emailLogin(String email, String pass) async {
    emit(const LoginState.loading());
    try {
      await _loginRepository.signInWithEmail(email, pass);
      Future.delayed(const Duration(seconds: 1)).then((value) {
        emit(const LoginState.success());
      });
    } catch (e) {
      emit(const Error("Error al iniciar sesión"));
    }
  }

  void logout() async {
    emit(const Loading());
    try {
      await _loginRepository.logOut();
      emit(const Success());
    } catch (e) {
      emit(const Error("Error al cerrar sesión"));
    }
  }

  void getCurrentUser() async {
    emit(const Loading());
    try {
      final user = await _userRepository.getCurrentUser();
      emit(UserFetched(user));
    } catch (e) {
      emit(const Error("Error al obtener el usuario"));
    }
  }

  void deleteAccount() async {
    emit(const Loading());
    try {
      await _userRepository.deleteUser();
      emit(const Success());
    } catch (e) {
      emit(const Error("Error al eliminar la cuenta"));
    }
  }
}
