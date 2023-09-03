import 'package:fiura_ecosystem/core/entities/artist_entity/artist_entity.dart';
import 'package:fiura_ecosystem/features/artists/domain/repositories/artist_repository.dart';
import 'package:fiura_ecosystem/features/artists/presentation/cubit/artist_cubit.dart';
import 'package:fiura_ecosystem/features/artists/presentation/cubit/artist_state.dart';
import 'package:fiura_ecosystem/features/images/domain/repositories/image_repository.dart';
import 'package:fiura_ecosystem/features/widgets/alert_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../dependencies.dart';

void deleteArtistModal({
  required BuildContext artistContext,
  required ArtistEntity artist,
}) {
  final ArtistCubit artistCubit =
      ArtistCubit(getIt<ArtistRepository>(), getIt<ImageRepository>());
  showDialog(
    context: artistContext,
    builder: ((context) {
      final TextStyle buttonTextStyle =
          Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.red,
              );

      return BlocProvider.value(
        value: artistCubit,
        child: BlocBuilder<ArtistCubit, ArtistState>(
          builder: (context, state) {
            return state.maybeWhen(
              initial: () => getInitialAlertDialog(
                  title: "¿Revocar permisos de administrador?",
                  content:
                      "Estás a punto de eliminar la información del artista ${artist.name}. Una vez eliminada no se podrá recuperar ¿Continuar?",
                  continueFunction: () => artistCubit.deleteArtist(artist.id),
                  cancelFunction: () => Navigator.pop(context),
                  buttonTextStyle: buttonTextStyle),
              loading: () => getLoadingAlertDialog(
                  contentText: "Eliminando artista, espera un momento..."),
              error: (error) => getErrorAlertDialog(
                  contentText: error,
                  buttonTextStyle: buttonTextStyle,
                  continueFunction: () => Navigator.pop(context)),
              success: () {
                artistContext.read<ArtistCubit>().getArtists();

                return getSuccessAlertDialog(
                    contentText: "Artista eliminado exitosamente",
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
