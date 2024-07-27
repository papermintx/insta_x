import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:insta_x/entities/post_entity.dart';
import 'package:insta_x/models/post_model.dart';
import 'package:insta_x/repositories/post_repo/post_repo.dart';
import 'package:uuid/uuid.dart';

class FirebasePostRepository implements PostRepo {
  final postCollection = FirebaseFirestore.instance.collection('posts');
  @override
  Future<PostModel> createPost(PostModel post) async {
    try {
      post.postId = const Uuid().v1();
      post.createdAt = DateTime.now();

      await postCollection.doc(post.postId).set(post.toEntity().toMap());
      return post;
    } catch (e) {
      log('Error creating post: $e');
      rethrow;
    }
  }

  @override
  Future<List<PostModel>> getPost() {
    try {
      return postCollection.get().then((value) {
        return value.docs
            .map((e) => PostModel.fromEntity(PostEntity.fromMap(e.data())))
            .toList();
      });
    } catch (e) {
      log('Error getting post: $e');
      rethrow;
    }
  }
}
