import 'package:fiura_ecosystem/features/splash/domain/repositories/splash_repository.dart';

class GetSplashUseCase {
  final SplashRepository repository;
  GetSplashUseCase({required this.repository});

  Future<bool> getUser() async {
    final result = await repository.getSplash();

    if (result) {
      return true;
    } else {
      return false;
    }
  }
}
