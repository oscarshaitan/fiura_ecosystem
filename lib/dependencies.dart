import 'package:fiura_ecosystem/features/splash/data/local/splash_repository_imp.dart';
import 'package:fiura_ecosystem/features/splash/domain/repositories/splash_repository.dart';
import 'package:fiura_ecosystem/features/splash/domain/use_cases/get_splash_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<RepositoryProvider> buildRepositories() {
  return [
    RepositoryProvider<SplashRepository>(create: (_) => SplashRepositoryImp()),
    RepositoryProvider<GetSplashUseCase>(
      create: (context) => GetSplashUseCase(
        repository: context.read<SplashRepository>(),
      ),
    ),
  ];
}
