import 'package:fiura/core/entities/judge_entity/judge_entity.dart';
import 'package:fiura/features/images/domain/repositories/image_repository.dart';
import 'package:fiura/features/judge/domain/repositories/judge_repository.dart';
import 'package:fiura/features/judge/presentation/cubit/judge_cubit.dart';
import 'package:fiura/features/judge/presentation/cubit/judge_state.dart';
import 'package:fiura/features/widgets/alert_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependencies.dart';

void deleteJudgeModal({
  required BuildContext artistContext,
  required JudgeEntity artist,
}) {
  final JudgeCubit artistCubit =
      JudgeCubit(getIt<JudgeRepository>(), getIt<ImageRepository>());
  showDialog(
    context: artistContext,
    builder: ((context) {
      final TextStyle buttonTextStyle =
          Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.red,
              );

      return BlocProvider.value(
        value: artistCubit,
        child: BlocBuilder<JudgeCubit, JudgeState>(
          builder: (context, state) {
            return state.maybeWhen(
              initial: () => getInitialAlertDialog(
                  title: "¿Revocar permisos de administrador?",
                  content:
                      "Estás a punto de eliminar la información del jurado ${artist.name}. Una vez eliminada no se podrá recuperar ¿Continuar?",
                  continueFunction: () => artistCubit.deleteJudge(artist.id),
                  cancelFunction: () => Navigator.pop(context),
                  buttonTextStyle: buttonTextStyle),
              loading: () => getLoadingAlertDialog(
                  contentText: "Eliminando jurado, espera un momento..."),
              error: (error) => getErrorAlertDialog(
                  contentText: error,
                  buttonTextStyle: buttonTextStyle,
                  continueFunction: () => Navigator.pop(context)),
              success: () {
                artistContext.read<JudgeCubit>().getJudges();

                return getSuccessAlertDialog(
                    contentText: "Judgea eliminado exitosamente",
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
