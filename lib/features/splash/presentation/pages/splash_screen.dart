import 'package:auto_route/auto_route.dart';
import 'package:fiura/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../dependencies.dart';
import '../cubit/splash_cubit.dart';
import '../cubit/splash_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacity;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 500))
      ..repeat(reverse: true);
    opacity = Tween(begin: 0.7, end: 1.0).animate(controller);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<Splashcubit>()..init(),
      child: BlocListener<Splashcubit, SplashState>(
        listener: (context, snapshot) {
          if (snapshot == const SplashState.none()) {
            context.router.pushAndPopUntil(const LoginScreenRoute(), predicate: (route) => false);
          } else {
            context.router.pushAndPopUntil(const HomeScreenRoute(), predicate: (route) => false);
          }
        },
        child: Scaffold(
            body: Center(
          child: FadeTransition(
            opacity: opacity,
            child: Image.asset(
              'assets/logo.png',
              width: 300,
              height: 300,
            ),
          ),
        )),
      ),
    );
  }
}
