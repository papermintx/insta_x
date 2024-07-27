import 'package:insta_x/models/post_model.dart';

abstract class PostRepo {
  Future<PostModel> createPost(PostModel post);

  Future<List<PostModel>> getPost();
}
