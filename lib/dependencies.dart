import 'package:fiura_ecosystem/features/login/domain/repositories/login_repository.dart';
import 'package:fiura_ecosystem/features/login/presentation/cubit/login_cubit.dart';
import 'package:fiura_ecosystem/features/splash/domain/repositories/splash_repository.dart';
import 'package:get_it/get_it.dart';
import 'features/login/data/local/login_repository_imp.dart';
import 'features/splash/data/local/splash_repository_imp.dart';
import 'features/splash/presentation/cubit/splash_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  //Splash
  getIt.registerFactory<SplashRepository>(() => SplashRepositoryImp());
  getIt.registerFactory<Splashcubit>(() => Splashcubit(getIt()));

  //Login
  getIt.registerFactory<LoginRepository>(() => LoginRepositoryImp());
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
