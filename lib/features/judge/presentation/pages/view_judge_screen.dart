import 'package:fiura_ecosystem/features/judge/presentation/cubit/judge_state.dart';
import 'package:fiura_ecosystem/features/widgets/on_load_message.dart';
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
            return ListView.builder(
                itemCount: judges.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(judges[index].urlPhoto),
                    ),
                    title: Text(judges[index].name),
                    subtitle: Text(judges[index].about),
                  );
                });
          },
        );
      }),
    );
  }
}
