import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //load everything then navigate to home, the future is to simulate the delay
    Future.delayed(const Duration(seconds: 2))
        .then((value) => context.router.popAndPush(const HomeScreenRoute()));
    return const Scaffold(
      body: Center(
        child: Text('FIURA SPLASH'),
      ),
    );
  }
}
