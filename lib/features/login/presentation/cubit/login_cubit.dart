import 'package:fiura_ecosystem/features/login/presentation/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/login_repository.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepository) : super(const Initial());

  final LoginRepository _loginRepository;

  void init() async {
    emit(const Loading());
    final result = await _loginRepository.signIn();
    if (result.user != null) {
      emit(const Success());
    } else {
      emit(const Error('Error'));
    }
  }
}
