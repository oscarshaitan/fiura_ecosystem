import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/dependencies.dart';
import 'package:fiura_ecosystem/features/login/presentation/cubit/login_cubit.dart';
import 'package:fiura_ecosystem/features/login/presentation/cubit/login_state.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void deleteAccountModal({
  required BuildContext context,
}) {
  showDialog(
      context: context,
      builder: ((context) {
        return BlocProvider(
          create: (_) => getIt<LoginCubit>(),
          child:
              BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
            state.whenOrNull(
              success: () => context.router.replace(const SplashScreenRoute()),
            );
          }, builder: (context, state) {
            return AlertDialog(
              backgroundColor: const Color(0xff353535),
              title: const Text('¿Eliminar la cuenta?'),
              content: const Text(
                  'Si eliminas tu cuenta, no podrás recuperarla. ¿Estás seguro de continuar?'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancelar")),
                TextButton(
                    onPressed: () {
                      context.read<LoginCubit>().deleteAccount();
                    },
                    child: const Text("Eliminar")),
              ],
            );
          }),
        );
      }));
}
