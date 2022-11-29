import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacity;

  final bool isLoged = false;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    opacity = Tween(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2)).then((value) => {
          if (isLoged == true)
            {context.router.popAndPush(const HomeScreenRoute())}
          else
            {context.router.popAndPush(const LoginScreenRoute())}
        });
    return Scaffold(
        body: Center(
      child: FadeTransition(
        opacity: opacity,
        child: Image.asset(
          'assets/logo.png',
          width: 300,
          height: 300,
        ),
      ),
    ));
  }
}
