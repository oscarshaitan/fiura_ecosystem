import 'package:auto_route/auto_route.dart';
import 'package:fiura/dependencies.dart';
import 'package:fiura/features/home/cubit/session_cubit.dart';
import 'package:fiura/features/schedule/presentation/cubit/schedule_cubit.dart';
import 'package:fiura/features/schedule/presentation/cubit/schedule_state.dart';
import 'package:fiura/features/widgets/image_loader_widget.dart';
import 'package:fiura/features/widgets/on_load_message.dart';
import 'package:fiura/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SchedulesScreen extends StatelessWidget {
  SchedulesScreen({Key? key}) : super(key: key);

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      builder: (context, sessionState) {
        return BlocProvider(
            create: (_) => getIt<ScheduleCubit>()..getSchedules(),
            child: BlocBuilder<ScheduleCubit, ScheduleState>(
              builder: (context, snapshot) {
                return snapshot.maybeWhen(
                    error: (message) => Text(message),
                    loading: () => const OnLoadMessage(),
                    orElse: () => const Center(child: Text("Ocurrió un error inesperado")),
                    loadData: (schedules) {
                      return Scaffold(
                          floatingActionButton: sessionState.maybeMap(
                              userFetched: (state) {
                                if (state.isAdmin) {
                                  return FloatingActionButton(
                                    onPressed: () => context.router.push(
                                      const CreateScheduleScreenRoute(),
                                    ),
                                    child: const Icon(Icons.add),
                                  );
                                } else {
                                  return null;
                                }
                              },
                              orElse: () => null),
                          body: Stack(
                            children: [
                              Column(
                                children: [
                                  Expanded(
                                      child: PageView.builder(
                                          itemCount: schedules.length,
                                          controller: controller,
                                          itemBuilder: (context, index) {
                                            return Stack(
                                              children: [
                                                Positioned.fill(
                                                  child: ImageLoaderWidget(
                                                    url: schedules[index].urlPhoto,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                IconButton(
                                                    onPressed: () => context.read<ScheduleCubit>().deleteSchedule(schedules[index].id),
                                                    icon: Icon(
                                                      Icons.delete,
                                                      color: Colors.red.withOpacity(0.6),
                                                      size: 45,
                                                    )),
                                              ],
                                            );
                                          })),
                                ],
                              ),
                              Positioned(
                                right: 0,
                                left: 0,
                                bottom: 64,
                                child: Center(
                                  child: SmoothPageIndicator(
                                    controller: controller, // PageController
                                    count: schedules.length,
                                    effect: const WormEffect(activeDotColor: Colors.red),
                                  ),
                                ),
                              ),
                            ],
                          ));
                    });
              },
            ));
      },
    );
  }
}
