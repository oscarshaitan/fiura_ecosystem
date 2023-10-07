import 'package:fiura/core/entities/post_entity/post_entity.dart';
import 'package:fiura/features/posts/presentation/cubit/post_cubit.dart';
import 'package:fiura/features/posts/presentation/widgets/load_post_modal.dart';
import 'package:fiura/features/widgets/image_loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostViewWidget extends StatelessWidget {
  final PostEntity postEntity;

  const PostViewWidget({super.key, required this.postEntity});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: postEntity.redirectionUrl != null
          ? () {
              loadPostModal(context: context, postUrl: postEntity.redirectionUrl!);
            }
          : null,
      child: Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * .5,
                  child: ImageLoaderWidget(url: postEntity.urlPhoto),
                ),
                IconButton(
                    onPressed: () => context.read<PostCubit>().deletePost(postEntity.id),
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red.withOpacity(0.6),
                      size: 45,
                    )),
              ],
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                child: Text(
                  postEntity.description,
                  textAlign: TextAlign.start,
                )),
          ],
        ),
      ),
    );
  }
}
