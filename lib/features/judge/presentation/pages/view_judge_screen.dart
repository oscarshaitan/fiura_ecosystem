import 'package:fiura_ecosystem/features/judge/presentation/cubit/judge_state.dart';
import 'package:fiura_ecosystem/features/widgets/on_load_message.dart';
import 'package:fiura_ecosystem/features/widgets/tile_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependencies.dart';
import '../cubit/judge_cubit.dart';

class ViewJudgeScreen extends StatelessWidget {
  const ViewJudgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<JudgeCubit>()..getJudges(),
      child: BlocBuilder<JudgeCubit, JudgeState>(builder: (context, snapshot) {
        return snapshot.maybeWhen(
          loading: () => const OnLoadMessage(),
          orElse: () {
            return const Center(child: Text("Error al cargar los datos"));
          },
          error: (message) => Text(message),
          loadData: (judges) {
            return FutureBuilder<void>(
                future: Future.wait(
                  judges.map(
                    (judge) => precacheImage(
                      NetworkImage(judge.urlPhoto),
                      context,
                    ),
                  ),
                ),
                builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                            "Ups! Ocurrió un error mientras cargabamos los jueces: ${snapshot.error}"),
                      );
                    } else {
                      return Container(
                        margin: const EdgeInsets.only(top: 20.0),
                        child: ListView.builder(
                            itemCount: judges.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: TileImageWidget(
                                    urlImage: judges[index].urlPhoto),
                                title: Text(judges[index].name),
                                subtitle: Text(
                                  judges[index].about,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: const Color(0xff717171)),
                                ),
                              );
                            }),
                      );
                    }
                  } else {
                    return const Center(child: OnLoadMessage());
                  }
                });
          },
        );
      }),
    );
  }
}
