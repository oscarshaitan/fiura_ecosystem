import 'package:fiura_ecosystem/dependencies.dart';
import 'package:fiura_ecosystem/features/posts/presentation/cubit/post_cubit.dart';
import 'package:fiura_ecosystem/features/posts/presentation/cubit/post_state.dart';
import 'package:fiura_ecosystem/features/posts/presentation/widgets/post_view_widget.dart';
import 'package:fiura_ecosystem/features/widgets/on_load_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => getIt<PostCubit>()..getPosts(),
        child: BlocBuilder<PostCubit, PostState>(
          builder: (context, snapshot) {
            return snapshot.maybeWhen(
                error: (message) => Text(message),
                loading: () => const OnLoadMessage(),
                orElse: () =>
                    const Center(child: Text("Ocurrió un error inesperado")),
                loadData: (posts) {
                  return FutureBuilder<void>(
                      future: Future.wait(
                        posts.map(
                          (post) => precacheImage(
                            NetworkImage(post.urlPhoto),
                            context,
                          ),
                        ),
                      ),
                      builder:
                          (BuildContext context, AsyncSnapshot<void> snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasError) {
                            return Center(
                              child: Text(
                                  "Ups! Ocurrió un error mientras cargabamos las noticias: ${snapshot.error}"),
                            );
                          } else {
                            return ListView.builder(
                              itemCount: posts.length,
                              itemBuilder: (context, index) {
                                return PostViewWidget(
                                  description: posts[index].description,
                                  urlPhoto: posts[index].urlPhoto,
                                );
                              },
                            );
                          }
                        } else {
                          return const Center(child: OnLoadMessage());
                        }
                      });
                });
          },
        ));
  }
}
