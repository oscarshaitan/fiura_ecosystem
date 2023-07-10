import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/features/artists/presentation/cubit/artist_cubit.dart';
import 'package:fiura_ecosystem/features/widgets/on_load_message.dart';
import 'package:fiura_ecosystem/features/widgets/tile_image_widget.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependencies.dart';
import '../cubit/artist_state.dart';

class ArtistsScreen extends StatelessWidget {
  const ArtistsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              loadData: (artistList) => FutureBuilder<void>(
                  future: Future.wait(
                    artistList.map(
                      (artist) => precacheImage(
                        NetworkImage(artist.urlPhoto),
                        context,
                      ),
                    ),
                  ),
                  builder:
                      (BuildContext context, AsyncSnapshot<void> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(
                              "Ups! Ocurrió un error mientras cargabamos los artistas: ${snapshot.error}"),
                        );
                      } else {
                        return Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          child: ListView.builder(
                            itemCount: artistList.length,
                            itemBuilder: (context, index) {
                              final artist = artistList[index];
                              return ListTile(
                                leading:
                                    TileImageWidget(urlImage: artist.urlPhoto),
                                onTap: () => context.router.push(
                                  ArtistsDetailScreenRoute(artistId: artist.id),
                                ),
                                trailing: const Icon(Icons.more_vert),
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
                        );
                      }
                    } else {
                      return const Center(child: OnLoadMessage());
                    }
                  }));
        },
      ),
    );
  }
}
