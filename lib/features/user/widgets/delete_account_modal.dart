import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/dependencies.dart';
import 'package:fiura_ecosystem/features/login/presentation/cubit/login_cubit.dart';
import 'package:fiura_ecosystem/features/login/presentation/cubit/login_state.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/alert_dialogs.dart';

void deleteAccountModal({
  required BuildContext context,
}) {
  showDialog(
      context: context,
      builder: ((context) {
        return BlocProvider(
          create: (_) => getIt<LoginCubit>(),
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              state.whenOrNull(
                success: () =>
                    context.router.replace(const SplashScreenRoute()),
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                error: (message) => getErrorAlertDialog(
                  contentText:
                      "Ocurrió un error inesperado al eliminar la cuenta",
                  continueFunction: () => Navigator.pop(context),
                ),
                orElse: () => getErrorAlertDialog(
                  contentText: "Ocurrió un error inesperado al cerrar sesión",
                  continueFunction: () => Navigator.pop(context),
                ),
                initial: () => AlertDialog(
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
                ),
                loading: () => getLoadingAlertDialog(
                    contentText: "Eliminando tu cuenta, espera un momento"),
              );
            },
          ),
        );
      }));
}
