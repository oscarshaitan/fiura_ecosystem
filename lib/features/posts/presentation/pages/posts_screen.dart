import 'package:auto_route/auto_route.dart';
import 'package:fiura/dependencies.dart';
import 'package:fiura/features/home/cubit/session_cubit.dart';
import 'package:fiura/features/posts/presentation/cubit/post_cubit.dart';
import 'package:fiura/features/posts/presentation/cubit/post_state.dart';
import 'package:fiura/features/posts/presentation/widgets/post_view_widget.dart';
import 'package:fiura/features/widgets/on_load_message.dart';
import 'package:fiura/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      builder: (context, sessionState) {
        return BlocProvider(
            create: (_) => getIt<PostCubit>()..getPosts(),
            child: BlocBuilder<PostCubit, PostState>(
              builder: (context, snapshot) {
                return snapshot.maybeWhen(
                    error: (message) => Text(message),
                    loading: () => const OnLoadMessage(),
                    orElse: () => const Center(child: Text("Ocurrió un error inesperado")),
                    loadData: (posts) {
                      return Scaffold(
                        floatingActionButton: sessionState.maybeMap(
                            userFetched: (state) {
                              if (state.isAdmin) {
                                return FloatingActionButton(
                                  onPressed: () => context.router.push(
                                    const CreatePostScreenRoute(),
                                  ),
                                  child: const Icon(Icons.add),
                                );
                              } else {
                                return null;
                              }
                            },
                            orElse: () => null),
                        body: ListView.builder(
                          padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * .1),
                          itemCount: posts.length,
                          itemBuilder: (context, index) {
                            return PostViewWidget(
                              postEntity: posts[index],
                            );
                          },
                        ),
                      );
                    });
              },
            ));
      },
    );
  }
}
