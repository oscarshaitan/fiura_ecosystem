import 'package:fiura_ecosystem/features/splash/domain/repositories/splash_repository.dart';

class SplashRepositoryImp extends SplashRepository {
  @override
  Future<bool> getSplash() async {
    await Future.delayed(const Duration(seconds: 0));
    return false;
  }
}
