import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fiura_ecosystem/core/entities/judge_entity/judge_entity.dart';
import 'package:fiura_ecosystem/features/judge/presentation/cubit/judge_state.dart';
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
          loading: () => const CircularProgressIndicator(),
          orElse: () {
            return const Text("Error al cargar los datos");
          },
          error: (message) => Text(message),
          loadData: (judges) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Jueces inscritos"),
              ),
              body: ListView.builder(
                  itemCount: judges.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(judges[index].name),
                      subtitle: Text(judges[index].about),
                    );
                  }),
            );
          },
        );
      }),
    );
  }
}
