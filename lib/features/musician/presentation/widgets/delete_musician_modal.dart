import 'package:fiura/core/entities/musician_entity/musician_entity.dart';
import 'package:fiura/features/images/domain/repositories/image_repository.dart';
import 'package:fiura/features/musician/domain/repositories/musician_repository.dart';
import 'package:fiura/features/musician/presentation/cubit/musician_cubit.dart';
import 'package:fiura/features/musician/presentation/cubit/musician_state.dart';
import 'package:fiura/features/widgets/alert_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependencies.dart';

void deleteMusicianModal({
  required BuildContext musicianContext,
  required MusicianEntity2 musician,
  required MusicianType musicianType,
}) {
  final MusicianCubit musicianCubit =
      MusicianCubit(getIt<MusicianRepository>(), getIt<ImageRepository>());
  showDialog(
    context: musicianContext,
    builder: ((context) {
      final TextStyle buttonTextStyle =
          Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.red,
              );
      String typeMusicianName =
          musicianType == MusicianType.artist ? 'artista' : 'jurado';
      return BlocProvider.value(
        value: musicianCubit,
        child: BlocBuilder<MusicianCubit, MusicianState>(
          builder: (context, state) {
            return state.maybeWhen(
              initial: () => getInitialAlertDialog(
                  title: "¿Eliminar $typeMusicianName?",
                  content:
                      "Estás a punto de eliminar la información del $typeMusicianName ${musician.name}. Una vez eliminada no se podrá recuperar ¿Continuar?",
                  continueFunction: () =>
                      musicianCubit.deleteMusician(musician.id, musicianType),
                  cancelFunction: () => Navigator.pop(context),
                  buttonTextStyle: buttonTextStyle),
              loading: () => getLoadingAlertDialog(
                  contentText:
                      "Eliminando $typeMusicianName, espera un momento..."),
              error: (error) => getErrorAlertDialog(
                  contentText: error,
                  buttonTextStyle: buttonTextStyle,
                  continueFunction: () => Navigator.pop(context)),
              success: () {
                musicianContext
                    .read<MusicianCubit>()
                    .getMusicians(musicianType);

                return getSuccessAlertDialog(
                    contentText:
                        "${typeMusicianName[0].toUpperCase() + typeMusicianName.substring(1)} eliminado exitosamente",
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
