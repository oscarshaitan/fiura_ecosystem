import 'package:fiura_ecosystem/core/entities/post_entity/post_entity.dart';
import 'package:fiura_ecosystem/features/posts/presentation/cubit/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repositories/post_repository.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit(this._postRepository) : super(const Initial());

  final PostRepository _postRepository;

  void addPost(
      String redirectionUrl, String urlPhoto, String description) async {
    PostEntity post = PostEntity(
      id: '',
      redirectionUrl: redirectionUrl,
      urlPhoto: urlPhoto,
      description: description,
    );

    emit(const Loading());
    final result = await _postRepository.addPost(post);
    if (result) {
      emit(const Success());
    } else {
      emit(const Error('Error añadiendo nuevo post'));
    }
  }
}
