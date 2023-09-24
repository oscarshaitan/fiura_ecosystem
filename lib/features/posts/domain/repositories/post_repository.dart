import 'dart:io';
import 'package:fiura/core/entities/post_entity/post_entity.dart';

abstract class PostRepository {
  Future<bool> addPost(PostEntity post, File image);
  Future<List<PostEntity>> getPosts();
}
