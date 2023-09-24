import 'package:fiura/core/entities/user/user_entity.dart';
import 'package:fiura/features/admins/presentation/cubit/admin_cubit.dart';
import 'package:fiura/features/admins/presentation/cubit/admin_state.dart';
import 'package:fiura/features/widgets/alert_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../dependencies.dart';
import '../../domain/repositories/admin_repository.dart';

void viewRemoveModal({
  required BuildContext adminContext,
  required UserEntity admin,
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
                  title: "¿Revocar permisos de administrador?",
                  content:
                      "Estás a punto de remover los permisos de administrador a ${admin.name}. ¿Continuar?",
                  continueFunction: () => adminCubit.deleteAdmin(admin.uid),
                  cancelFunction: () => Navigator.pop(context),
                  buttonTextStyle: buttonTextStyle),
              loading: () => getLoadingAlertDialog(
                  contentText: "Removiendo permisos, espera un momento..."),
              error: (error) => getErrorAlertDialog(
                  contentText: error,
                  buttonTextStyle: buttonTextStyle,
                  continueFunction: () => Navigator.pop(context)),
              success: () {
                adminContext.read<AdminCubit>().getAdmins();

                return getSuccessAlertDialog(
                    contentText:
                        "Permisos de administrador retirados exitosamente",
                    continueFunction: () => Navigator.pop(context),
                    buttonTextStyle: buttonTextStyle);
              },
              orElse: () => Container(),
            );
          },
        ),
      );
    }),
  );
}
