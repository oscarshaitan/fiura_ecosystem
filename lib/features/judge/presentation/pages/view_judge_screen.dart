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
          loading: () => const _ViewBody(
              body: Center(
            child: SizedBox(
              height: 200.0,
              width: 200.0,
              child: CircularProgressIndicator(),
            ),
          )),
          orElse: () {
            return const _ViewBody(
                body: Center(child: Text("Error al cargar los datos")));
          },
          error: (message) => Text(message),
          loadData: (judges) {
            return _ViewBody(
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

class _ViewBody extends StatelessWidget {
  final Widget body;

  const _ViewBody({
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Jueces inscritos"),
        ),
        body: body);
  }
}
