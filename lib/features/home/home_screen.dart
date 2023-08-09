import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/features/home/cubit/session_cubit.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../dependencies.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SessionCubit>(),
      child: BlocBuilder<SessionCubit, SessionState>(
        builder: (context, sessionState) {
          return Scaffold(
            appBar: AppBar(title: const Text('Fiura')),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Text('Drawer Header'),
                  ),
                  ListTile(
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.of(context).pop();
                      context.router.pushAndPopUntil(const PostsScreenRoute(),
                          predicate: (route) => false);
                    },
                  ),
                  ListTile(
                    title: const Text('Artistas'),
                    onTap: () {
                      Navigator.of(context).pop();
                      context.router.push(const ArtistsScreenRoute());
                    },
                  ),
                  ListTile(
                    title: const Text('Jueces'),
                    onTap: () {
                      Navigator.of(context).pop();
                      context.router.push(const ViewJudgeScreenRoute());
                    },
                  ),
                  ListTile(
                    title: const Text('Patrocinadores'),
                    onTap: () {
                      Navigator.of(context).pop();
                      context.router.push(const ViewSponsorScreenRoute());
                    },
                  ),
                  sessionState.maybeMap(
                      userFetched: (state) {
                        if (state.isAdmin) {
                          return ListTile(
                            title: const Text('Administradores'),
                            onTap: () {
                              Navigator.of(context).pop();
                              context.router.push(const AdminScreenRoute());
                            },
                          );
                        } else {
                          return Container();
                        }
                      },
                      orElse: () => Container())
                ],
              ),
            ),
            body: const Column(
              children: [
                Expanded(child: AutoRouter()),
              ],
            ),
          );
        },
      ),
    );
  }
}
