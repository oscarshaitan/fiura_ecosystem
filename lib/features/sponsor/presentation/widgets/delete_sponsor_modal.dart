import 'package:fiura/core/entities/sponsor_entity/sponsor_entity.dart';
import 'package:fiura/features/images/domain/repositories/image_repository.dart';
import 'package:fiura/features/sponsor/domain/repositories/sponsor_repository.dart';
import 'package:fiura/features/sponsor/presentation/cubit/sponsor_cubit.dart';
import 'package:fiura/features/sponsor/presentation/cubit/sponsor_state.dart';
import 'package:fiura/features/widgets/alert_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependencies.dart';

void deleteSponsorModal({
  required BuildContext sponsorContext,
  required SponsorEntity sponsor,
}) {
  final SponsorCubit sponsorCubit = SponsorCubit(getIt<SponsorRepository>(), getIt<ImageRepository>());
  showDialog(
    context: sponsorContext,
    builder: ((context) {
      final TextStyle buttonTextStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Colors.red,
          );

      return BlocProvider.value(
        value: sponsorCubit,
        child: BlocBuilder<SponsorCubit, SponsorState>(
          builder: (context, state) {
            return state.maybeWhen(
              initial: () => getInitialAlertDialog(
                  title: "¿Revocar permisos de administrador?",
                  content: "Estás a punto de eliminar la información del patrocinador ${sponsor.name}. Una vez eliminada no se podrá recuperar ¿Continuar?",
                  continueFunction: () => sponsorCubit.deleteSponsor(sponsor.id),
                  cancelFunction: () => Navigator.pop(context),
                  buttonTextStyle: buttonTextStyle),
              loading: () => getLoadingAlertDialog(contentText: "Eliminando sponsora, espera un momento..."),
              error: (error) => getErrorAlertDialog(contentText: error, buttonTextStyle: buttonTextStyle, continueFunction: () => Navigator.pop(context)),
              success: () {
                sponsorContext.read<SponsorCubit>().getSponsors();

                return getSuccessAlertDialog(contentText: "Sponsora eliminado exitosamente", continueFunction: () => Navigator.pop(context), buttonTextStyle: buttonTextStyle);
              },
              orElse: () => Container(),
            );
          },
        ),
      );
    }),
  );
}
