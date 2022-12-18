import 'package:fiura_ecosystem/features/splash/domain/repositories/splash_repository.dart';
import 'package:get_it/get_it.dart';
import 'features/splash/data/local/splash_repository_imp.dart';
import 'features/splash/presentation/cubit/splash_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerFactory<SplashRepository>(() => SplashRepositoryImp());
  getIt.registerFactory<Splashcubit>(() => Splashcubit(getIt()));
}
