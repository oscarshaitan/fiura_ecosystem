import 'package:fiura_ecosystem/core/entities/post_entity/post_entity.dart';

abstract class PostRepository {
  Future<bool> addPost(PostEntity post);
}
