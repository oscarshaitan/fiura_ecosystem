import 'package:fiura_ecosystem/features/splash/domain/use_cases/get_splash_use_case.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/exceptions/auth_exception.dart';

part 'splash_state.dart';

enum SplashState { none, logedUser }

class Splashcubit extends Cubit<SplashState> {
  Splashcubit(this._getSplashUseCase) : super(SplashState.none);

  final GetSplashUseCase _getSplashUseCase;

  // void init() async {
  //   try {
  //     final result = await _getSplashUseCase.getUser();
  //   } on AuthException catch (e) {
  //     if (e.error == AuthErrorCode.notAuth) {
  //       emit(SplashState.none);
  //     } else {
  //       emit(SplashState.logedUser);
  //     }
  //   }
  // }
  void init() async {
    final result = await _getSplashUseCase.getUser();

    if (result) {
      emit(SplashState.logedUser);
    } else {
      emit(SplashState.none);
    }
  }
}
