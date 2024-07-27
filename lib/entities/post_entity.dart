import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:insta_x/entities/user_entity.dart';
import 'package:insta_x/models/user_model.dart';

class PostEntity extends Equatable {
  String postId;
  String post;
  DateTime createdAt;
  UserModel user;

  PostEntity({
    required this.postId,
    required this.post,
    required this.createdAt,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postId': postId,
      'post': post,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'user': user.toEntity().toMap(),
    };
  }

  static PostEntity fromMap(Map<String, dynamic> map) {
    return PostEntity(
      postId: map['postId'] as String,
      post: map['post'] as String,
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      user: UserModel.fromEntity(
          UserEntity.fromMap(map['user'] as Map<String, dynamic>)),
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return '''
    PostEntity {
      postId: $postId,
      post: $post,
      createdAt: $createdAt,
      user: $user,
    }
''';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [postId, post, createdAt, user];
}
