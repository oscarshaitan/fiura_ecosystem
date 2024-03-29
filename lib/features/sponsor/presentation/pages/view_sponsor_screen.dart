import 'package:auto_route/auto_route.dart';
import 'package:fiura/core/entities/sponsor_entity/sponsor_entity.dart';
import 'package:fiura/features/home/cubit/session_cubit.dart';
import 'package:fiura/features/sponsor/presentation/cubit/sponsor_state.dart';
import 'package:fiura/features/sponsor/presentation/widgets/delete_sponsor_modal.dart';
import 'package:fiura/features/widgets/tile_image_widget.dart';
import 'package:fiura/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependencies.dart';
import '../../../widgets/more_menu_widget.dart';
import '../../../widgets/on_load_message.dart';
import '../cubit/sponsor_cubit.dart';

class ViewSponsorScreen extends StatelessWidget {
  const ViewSponsorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      builder: (context, sessionState) {
        return BlocProvider(
          create: (_) => getIt<SponsorCubit>()..getSponsors(),
          child: BlocBuilder<SponsorCubit, SponsorState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => const Center(
                        child: Text("Ups! Ocurrió un error mientras cargabamos este artista"),
                      ),
                  loading: () => const Center(child: OnLoadMessage()),
                  error: (message) => Center(child: Text(message)),
                  loadData: (sponsors) {
                    return Scaffold(
                      floatingActionButton: sessionState.maybeMap(
                          userFetched: (state) {
                            if (state.isAdmin) {
                              return FloatingActionButton(
                                onPressed: () => context.router.push(
                                  CreateSponsorScreenRoute(),
                                ),
                                child: const Icon(Icons.add),
                              );
                            } else {
                              return null;
                            }
                          },
                          orElse: () => null),
                      body: ListView.builder(
                        itemCount: sponsors.length,
                        itemBuilder: (context, index) {
                          final SponsorEntity sponsor = sponsors[index];
                          return ListTile(
                            leading: TileImageWidget(urlImage: sponsor.urlPhoto),
                            onTap: () => context.router.push(SponsorDetailScreenRoute(sponsorId: sponsor.id)),
                            trailing: sessionState.maybeMap(
                                userFetched: (state) {
                                  if (state.isAdmin) {
                                    return MoreMenuWidget(
                                      editFunction: () {
                                        context.router.push(
                                          CreateSponsorScreenRoute(sponsor: sponsor),
                                        );
                                      },
                                      deleteFunction: () {
                                        deleteSponsorModal(
                                          sponsorContext: context,
                                          sponsor: sponsor,
                                        );
                                      },
                                    );
                                  } else {
                                    return null;
                                  }
                                },
                                orElse: () => const SizedBox()),
                            title: Text(sponsor.name),
                            subtitle: Text(
                              sponsor.about,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: const Color(0xff717171)),
                            ),
                          );
                        },
                      ),
                    );
                  });
            },
          ),
        );
      },
    );
  }
}
