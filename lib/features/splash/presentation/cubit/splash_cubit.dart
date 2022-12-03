import 'package:fiura_ecosystem/features/splash/domain/use_cases/get_splash_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

enum SplashState { none, logedUser }

class Splashcubit extends Cubit<SplashState> {
  Splashcubit(this._getSplashUseCase) : super(SplashState.none);

  final GetSplashUseCase _getSplashUseCase;

  void init() async {
    final result = await _getSplashUseCase.getUser();

    if (result) {
      emit(SplashState.logedUser);
    } else {
      emit(SplashState.none);
    }
  }
}
