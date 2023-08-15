import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/dependencies.dart';
import 'package:fiura_ecosystem/features/login/presentation/cubit/login_cubit.dart';
import 'package:fiura_ecosystem/features/login/presentation/cubit/login_state.dart';
import 'package:fiura_ecosystem/features/widgets/alert_dialogs.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void logoutModal({
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
            return state.maybeWhen(
              initial: () {
                return AlertDialog(
                  backgroundColor: const Color(0xff353535),
                  title: const Text('¿Cerrar sesión de la cuenta?'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          context.read<LoginCubit>().logout();
                        },
                        child: const Text("Cerrar sesión")),
                  ],
                );
              },
              loading: () =>
                  getLoadingAlertDialog(contentText: "Cerrando sesión"),
              error: (message) => getErrorAlertDialog(
                contentText: "Ocurrió un error inesperado al cerrar sesión",
                continueFunction: () => Navigator.pop(context),
              ),
              orElse: () => getErrorAlertDialog(
                contentText: "Ocurrió un error inesperado al cerrar sesión",
                continueFunction: () => Navigator.pop(context),
              ),
            );
          }),
        );
      }));
}
