import 'package:auto_route/auto_route.dart';
import 'package:fiura/features/home/cubit/session_cubit.dart';
import 'package:fiura/features/judge/presentation/cubit/judge_state.dart';
import 'package:fiura/features/judge/presentation/widgets/delete_judge_modal.dart';
import 'package:fiura/features/widgets/on_load_message.dart';
import 'package:fiura/features/widgets/tile_image_widget.dart';
import 'package:fiura/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependencies.dart';
import '../../../widgets/more_menu_widget.dart';
import '../cubit/judge_cubit.dart';

class ViewJudgeScreen extends StatelessWidget {
  const ViewJudgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      builder: (context, sessionState) {
        return BlocProvider(
          create: (_) => getIt<JudgeCubit>()..getJudges(),
          child:
              BlocBuilder<JudgeCubit, JudgeState>(builder: (context, snapshot) {
            return snapshot.maybeWhen(
                loading: () => const OnLoadMessage(),
                orElse: () {
                  return const Center(child: Text("Error al cargar los datos"));
                },
                error: (message) => Text(message),
                loadData: (judges) {
                  return Scaffold(
                    floatingActionButton: sessionState.maybeMap(
                        userFetched: (state) {
                          if (state.isAdmin) {
                            return FloatingActionButton(
                              onPressed: () => context.router.push(
                                CreateJudgeScreenRoute(),
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
                          itemCount: judges.length,
                          itemBuilder: (context, index) {
                            final judge = judges[index];
                            return ListTile(
                              onTap: () => context.router.push(
                                JudgeDetailScreenRoute(
                                    judgeId: judge.musician.id),
                              ),
                              leading: TileImageWidget(
                                  urlImage: judges[index].musician.urlPhoto),
                              title: Text(judges[index].musician.name),
                              subtitle: Text(
                                judges[index].musician.about,
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
                                            CreateJudgeScreenRoute(
                                                judge: judge),
                                          );
                                        },
                                        deleteFunction: () {
                                          deleteJudgeModal(
                                            artistContext: context,
                                            artist: judge,
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
