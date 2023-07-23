import 'package:fiura_ecosystem/core/entities/user/user_entity.dart';
import 'package:fiura_ecosystem/features/admins/presentation/cubit/admin_cubit.dart';
import 'package:fiura_ecosystem/features/admins/presentation/cubit/admin_state.dart';
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
              initial: () => AlertDialog(
                title: const Text(
                  "¿Revocar permisos de administrador?",
                  textAlign: TextAlign.start,
                ),
                content: Text(
                  "Estás a punto de remover los permisos de administrador a ${admin.name}. ¿Continuar?",
                  textAlign: TextAlign.start,
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      "Cancelar",
                      style: buttonTextStyle,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      adminCubit.deleteAdmin(admin.uid);
                    },
                    child: Text("Continuar", style: buttonTextStyle),
                  ),
                ],
              ),
              loading: () => const AlertDialog(
                backgroundColor: Color(0xff353535),
                content: SizedBox(
                  height: 150.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Removiendo permisos, espera un momento...",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              error: (error) => AlertDialog(
                backgroundColor: const Color(0xff353535),
                content: Center(
                  child: Text(
                    error,
                    textAlign: TextAlign.start,
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Aceptar",
                      style: buttonTextStyle,
                    ),
                  ),
                ],
              ),
              success: () {
                adminContext.read<AdminCubit>().getAdmins();

                return AlertDialog(
                  backgroundColor: const Color(0xff353535),
                  content: const Text(
                    "Permisos de administrador retirados exitosamente",
                    textAlign: TextAlign.center,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Aceptar",
                        style: buttonTextStyle,
                      ),
                    ),
                  ],
                );
              },
              orElse: () => Container(),
            );
          },
        ),
      );
    }),
  );
}
