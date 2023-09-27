import 'package:auto_route/auto_route.dart';
import 'package:fiura/features/login/presentation/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependencies.dart';
import '../../../../router/app_router.gr.dart';
import '../cubit/login_cubit.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, snapshot) {
          if (snapshot == const LoginState.success()) {
            context.router.popAndPush(const HomeScreenRoute());
          } else {
            context.router.popAndPush(const LoginScreenRoute());
          }
        },
        builder: (context, snapshot) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 200.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    const Image(image: AssetImage('assets/logo.png'), height: 150.0),
                    Text(
                      'Bienvenido a Fiura',
                      style: Theme.of(context).textTheme.titleSmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      'Por favor inicia sesión para poder acceder a toda la información del Fiura',
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 250.0,
                    ),
                    SignInButton(
                      Buttons.google,
                      text: "Sign up with Google",
                      onPressed: () {
                        context.read<LoginCubit>().login();
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
