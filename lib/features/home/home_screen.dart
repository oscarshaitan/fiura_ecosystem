import 'package:auto_route/auto_route.dart';
import 'package:fiura/features/home/cubit/session_cubit.dart';
import 'package:fiura/features/home/widgets/logout_modal.dart';
import 'package:fiura/features/widgets/on_load_message.dart';
import 'package:fiura/router/app_router.gr.dart';
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: DrawerHeader(
                        decoration: const BoxDecoration(color: Colors.red),
                        child: sessionState.maybeMap(
                          error: (value) => const OnLoadMessage(),
                          userFetched: (state) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    context.router.push(const ProfileScreenRoute());
                                  },
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage(state.currentUser!.photo),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(state.currentUser!.name,
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        )),
                                if (state.isAdmin) ...[
                                  const SizedBox(height: 5),
                                  Text(
                                    'Administrador',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  )
                                ]
                              ],
                            );
                          },
                          orElse: () => const Image(image: AssetImage('assets/images/logo.png')),
                        )),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.of(context).pop();
                      context.router.pushAndPopUntil(const PostsScreenRoute(), predicate: (route) => false);
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
                      orElse: () => Container()),
                  const SizedBox(height: 10),
                  const Expanded(child: SizedBox()),
                  const Divider(
                    color: Color(0xff717171),
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                        title: const Row(children: [
                          Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text('Cerrar sesión')
                        ]),
                        onTap: () {
                          logoutModal(context: context);
                        }),
                  )
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
