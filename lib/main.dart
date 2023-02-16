import 'package:firebase_core/firebase_core.dart';
import 'package:fiura_ecosystem/dependencies.dart';
import 'package:fiura_ecosystem/firebase_options.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:fiura_ecosystem/theming.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setPathUrlStrategy();
  setup();
  runApp(FiuraApp());
}

class FiuraApp extends StatelessWidget {
  FiuraApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: Theming().themeData,
      routerDelegate: _appRouter.delegate(),
    );
  }
}
