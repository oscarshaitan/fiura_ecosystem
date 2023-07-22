import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:fiura_ecosystem/core/entities/post_entity/post_entity.dart';
import 'package:fiura_ecosystem/features/posts/presentation/cubit/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../images/domain/repositories/image_repository.dart';
import '../../domain/repositories/post_repository.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit(this._postRepository, this._imageRepository)
      : super(const Initial());

  final PostRepository _postRepository;
  final ImageRepository _imageRepository;

  void addPost(String redirectionUrl, String description, File? image) async {
    String urlPhoto = 'Posts/${path.basename(image!.path)}';

    PostEntity post = PostEntity(
      id: '',
      redirectionUrl: redirectionUrl,
      urlPhoto: urlPhoto,
      description: description,
    );

    emit(const Loading());
    final result = await _postRepository.addPost(post, image);
    if (result) {
      emit(const Success());
    } else {
      emit(const Error('Error añadiendo nuevo post'));
    }
  }

  void getPosts() async {
    emit(const Loading());
    try {
      final result = await _postRepository.getPosts();
      emit(LoadData(result));
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  void imagePicker() async {
    final File? image = await _imageRepository.imagePicker();

    if (image != null) {
      emit(PickedImage(image));
    }
  }
}
