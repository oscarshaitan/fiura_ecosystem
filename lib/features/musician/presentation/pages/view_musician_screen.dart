import 'package:auto_route/auto_route.dart';
import 'package:fiura/core/entities/musician_entity/musician_entity.dart';
import 'package:fiura/features/home/cubit/session_cubit.dart';
import 'package:fiura/features/musician/presentation/widgets/delete_musician_modal.dart';
import 'package:fiura/features/musician/presentation/cubit/musician_cubit.dart';
import 'package:fiura/features/musician/presentation/cubit/musician_state.dart';
import 'package:fiura/features/widgets/on_load_message.dart';
import 'package:fiura/features/widgets/tile_image_widget.dart';
import 'package:fiura/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependencies.dart';
import '../../../widgets/more_menu_widget.dart';

class ViewMusicianScreen extends StatelessWidget {
  const ViewMusicianScreen({super.key, required this.musicianType});

  final MusicianType musicianType;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      builder: (context, sessionState) {
        return BlocProvider(
          create: (_) => getIt<MusicianCubit>()..getMusicians(musicianType),
          child: BlocBuilder<MusicianCubit, MusicianState>(
              builder: (context, snapshot) {
            return snapshot.maybeWhen(
                loading: () => const OnLoadMessage(),
                orElse: () {
                  return const Center(child: Text("Error al cargar los datos"));
                },
                error: (message) => Text(message),
                loadMusicianList: (musicians) {
                  return Scaffold(
                    floatingActionButton: sessionState.maybeMap(
                        userFetched: (state) {
                          if (state.isAdmin) {
                            return FloatingActionButton(
                              onPressed: () => context.router.push(
                                CreateMusicianScreenRoute(
                                    musicianType: musicianType),
                              ),
                              child: const Icon(Icons.add),
                            );
                          } else {
                            return null;
                          }
                        },
                        orElse: () => null),
                    body: Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      child: ListView.builder(
                          itemCount: musicians.length,
                          itemBuilder: (context, index) {
                            final musician = musicians[index];
                            return ListTile(
                              onTap: () => context.router.push(
                                MusicianDetailScreenRoute(
                                  musicianId: musician.id,
                                  musicianType: musicianType,
                                ),
                              ),
                              leading: TileImageWidget(
                                  urlImage: musicians[index].urlPhoto),
                              title: Text(musicians[index].name),
                              subtitle: Text(
                                musicians[index].about,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: const Color(0xff717171)),
                              ),
                              trailing: sessionState.maybeMap(
                                  userFetched: (state) {
                                    if (state.isAdmin) {
                                      return MoreMenuWidget(
                                        editFunction: () {
                                          context.router.push(
                                            CreateMusicianScreenRoute(
                                              musician: musician,
                                              musicianType: musicianType,
                                            ),
                                          );
                                        },
                                        deleteFunction: () {
                                          deleteMusicianModal(
                                            musicianType: musicianType,
                                            musicianContext: context,
                                            musician: musician,
                                          );
                                        },
                                      );
                                    } else {
                                      return null;
                                    }
                                  },
                                  orElse: () => const SizedBox()),
                            );
                          }),
                    ),
                  );
                });
          }),
        );
      },
    );
  }
}
