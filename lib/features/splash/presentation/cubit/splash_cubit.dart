// import 'package:fiura_ecosystem/features/splash/domain/use_cases/get_splash_use_case.dart';
import 'package:fiura_ecosystem/features/splash/presentation/cubit/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fiura_ecosystem/features/splash/domain/repositories/splash_repository.dart';

class Splashcubit extends Cubit<SplashState> {
  Splashcubit(this._splashRepository) : super(const None());

  final SplashRepository _splashRepository;

  void init() async {
    final result = await _splashRepository.getSplash();

    if (result) {
      emit(const SplashState.logedUser());
    } else {
      emit(const SplashState.none());
    }
  }
}
