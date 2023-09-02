import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/features/artists/presentation/cubit/artist_cubit.dart';
import 'package:fiura_ecosystem/features/home/cubit/session_cubit.dart';
import 'package:fiura_ecosystem/features/widgets/on_load_message.dart';
import 'package:fiura_ecosystem/features/widgets/tile_image_widget.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependencies.dart';
import '../../../widgets/more_menu_widget.dart';
import '../cubit/artist_state.dart';
import '../widgets/delete_artist_modal.dart';

class ArtistsScreen extends StatelessWidget {
  const ArtistsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      builder: (context, sessionState) {
        return BlocProvider(
          create: (_) => getIt<ArtistCubit>()..getArtists(),
          child: BlocBuilder<ArtistCubit, ArtistState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const Center(child: OnLoadMessage()),
                error: (error) => Center(
                  child: Center(child: Text(error)),
                ),
                orElse: () => const Center(
                  child: Text(
                      "Ups! Ocurrió un error inesperado mientras cargabamos los artistas"),
                ),
                loadData: (artistList) => Scaffold(
                  floatingActionButton: sessionState.maybeMap(
                      userFetched: (state) {
                        if (state.isAdmin) {
                          return FloatingActionButton(
                              onPressed: () => context.router.push(
                                    CreateArtistScreenRoute(),
                                  ));
                        } else {
                          return null;
                        }
                      },
                      orElse: () => null),
                  body: Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: ListView.builder(
                      itemCount: artistList.length,
                      itemBuilder: (context, index) {
                        final artist = artistList[index];
                        return ListTile(
                          leading: TileImageWidget(urlImage: artist.urlPhoto),
                          onTap: () => context.router.push(
                            ArtistsDetailScreenRoute(artistId: artist.id),
                          ),
                          trailing: sessionState.maybeMap(
                              userFetched: (state) {
                                if (state.isAdmin) {
                                  return MoreMenuWidget(
                                    editFunction: () {
                                      context.router.push(
                                          CreateArtistScreenRoute(
                                              artist: artist));
                                    },
                                    deleteFunction: () {
                                      deleteArtistModal(
                                        artistContext: context,
                                        artist: artist,
                                      );
                                    },
                                  );
                                } else {
                                  return null;
                                }
                              },
                              orElse: () => const SizedBox()),
                          title: Text(artist.name),
                          subtitle: Text(
                            artist.about,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: const Color(0xff717171)),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
