import 'package:auto_route/auto_route.dart';
import 'package:fiura/features/admins/presentation/cubit/admin_state.dart';
import 'package:fiura/features/widgets/alert_dialogs.dart';
import 'package:fiura/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:fiura/core/entities/user/user_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependencies.dart';
import '../../domain/repositories/admin_repository.dart';
import '../cubit/admin_cubit.dart';

void viewAddAdminModal({
  required BuildContext adminContext,
  required UserEntity user,
}) {
  final AdminCubit adminCubit = AdminCubit(getIt<AdminRepository>());
  showDialog(
      context: adminContext,
      builder: ((context) {
        final TextStyle buttonTextStyle =
            Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.red,
                );

        return BlocProvider.value(
          value: adminCubit,
          child: BlocBuilder<AdminCubit, AdminState>(
            builder: (context, state) {
              return state.maybeWhen(
                initial: () => getInitialAlertDialog(
                    title: "¿Otorgar permisos?",
                    content:
                        "Estás a punto de otorgar permisos de administrador a ${user.name} ¿Continuar?",
                    continueFunction: () =>
                        context.read<AdminCubit>().addAdmin(user.uid),
                    buttonTextStyle: buttonTextStyle,
                    cancelFunction: () => Navigator.pop(context)),
                loading: () => getLoadingAlertDialog(
                    contentText: "Otorgando permisos, espera un momento..."),
                success: () => getSuccessAlertDialog(
                  contentText:
                      "Se han otorgado exitosamente los permisos de administrador a ${user.name}",
                  continueFunction: () => context.router.popAndPush(
                    const HomeScreenRoute(children: [AdminScreenRoute()]),
                  ),
                  buttonTextStyle: buttonTextStyle,
                ),
                error: (message) => getErrorAlertDialog(
                    contentText:
                        "Ups! Ocurrió un error inesperado mientras otorgabamos los permisos a este usuario: $message",
                    continueFunction: () => Navigator.pop(context),
                    buttonTextStyle: buttonTextStyle),
                orElse: () => getErrorAlertDialog(
                    contentText:
                        "Ups! Ocurrió un error inesperado mientras otorgabamos los permisos a este usuario. Intentalo de nuevo más tarde",
                    buttonTextStyle: buttonTextStyle,
                    continueFunction: () => Navigator.pop(context)),
              );
            },
          ),
        );
      }));
}
