import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/dependencies.dart';
import 'package:fiura_ecosystem/features/artists/presentation/cubit/artist_cubit.dart';
import 'package:fiura_ecosystem/features/artists/presentation/cubit/artist_state.dart';
import 'package:fiura_ecosystem/features/artits_detail_screen/artist_detail_body_widget.dart';
import 'package:fiura_ecosystem/features/widgets/on_load_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArtistsDetailScreen extends StatefulWidget {
  const ArtistsDetailScreen({
    Key? key,
    @PathParam() required this.artistId,
  }) : super(key: key);

  final String artistId;

  @override
  State<ArtistsDetailScreen> createState() => _ArtistsDetailScreenState();
}

class _ArtistsDetailScreenState extends State<ArtistsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<ArtistCubit>()..getArtist(widget.artistId),
        child: BlocBuilder<ArtistCubit, ArtistState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(
                child: Text(
                    "Ups! Ocurrió un error mientras cargabamos este artista"),
              ),
              loading: () => const Center(child: OnLoadMessage()),
              error: (message) => Center(child: Text(message)),
              loadArtist: (artist) {
                return FutureBuilder<void>(
                  future: precacheImage(NetworkImage(artist.urlPhoto), context),
                  builder:
                      (BuildContext context, AsyncSnapshot<void> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(
                              'Ups! Ocurrió un error mientras cargabamos este artista: ${snapshot.error}'),
                        );
                      } else {
                        return ArtistDetailBodyWidget(artist: artist);
                      }
                    } else {
                      return const Center(child: OnLoadMessage());
                    }
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
