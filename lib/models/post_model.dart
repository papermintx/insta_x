// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:insta_x/entities/post_entity.dart';
import 'package:insta_x/models/user_model.dart';

class PostModel {
  String postId;
  String post;
  DateTime createdAt;
  UserModel user;

  PostModel({
    required this.postId,
    required this.post,
    required this.createdAt,
    required this.user,
  });

  static final empty = PostModel(
    postId: '',
    post: '',
    createdAt: DateTime.now(),
    user: UserModel.empty,
  );

  PostModel copyWith({
    String? postId,
    String? post,
    DateTime? createdAt,
    UserModel? user,
  }) {
    return PostModel(
      postId: postId ?? this.postId,
      post: post ?? this.post,
      createdAt: createdAt ?? this.createdAt,
      user: user ?? this.user,
    );
  }

  bool get isEmpty => this == PostModel.empty;

  bool get isNotEmpty => this != PostModel.empty;

  @override
  String toString() {
    // TODO: implement toString
    return '''
    PostModel {
      postId: $postId,
      post: $post,
      createdAt: $createdAt,
      user: $user,
    }
''';
  }

  PostEntity toEntity() {
    return PostEntity(
      postId: postId,
      post: post,
      createdAt: createdAt,
      user: user,
    );
  }

  static PostModel fromEntity(PostEntity entity) {
    return PostModel(
      postId: entity.postId,
      post: entity.post,
      createdAt: entity.createdAt,
      user: entity.user,
    );
  }
}
