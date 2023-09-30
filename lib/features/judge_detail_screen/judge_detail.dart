import 'package:auto_route/auto_route.dart';
import 'package:fiura/dependencies.dart';
import 'package:fiura/features/judge/presentation/cubit/judge_cubit.dart';
import 'package:fiura/features/judge/presentation/cubit/judge_state.dart';
import 'package:fiura/features/judge_detail_screen/judge_detail_body_widget.dart';
import 'package:fiura/features/widgets/on_load_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JudgeDetailScreen extends StatefulWidget {
  const JudgeDetailScreen({
    Key? key,
    @PathParam() required this.judgeId,
  }) : super(key: key);

  final String judgeId;

  @override
  State<JudgeDetailScreen> createState() => _JudgeDetailScreenState();
}

class _JudgeDetailScreenState extends State<JudgeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<JudgeCubit>()..getJudge(widget.judgeId),
        child: BlocBuilder<JudgeCubit, JudgeState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(
                child: Text(
                    "Ups! Ocurrió un error mientras cargabamos este jurado"),
              ),
              loading: () => const Center(child: OnLoadMessage()),
              error: (message) => Center(child: Text(message)),
              loadJudge: (judge) {
                return FutureBuilder<void>(
                  future: precacheImage(
                      NetworkImage(judge.musician.urlPhoto), context),
                  builder:
                      (BuildContext context, AsyncSnapshot<void> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(
                              'Ups! Ocurrió un error mientras cargabamos este jurado: ${snapshot.error}'),
                        );
                      } else {
                        return JudgeDetailBodyWidget(judge: judge);
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
