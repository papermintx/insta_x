// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:insta_x/entities/user_entity.dart';

class UserModel extends Equatable {
  final String id;
  final String name;
  final String email;
  String? picture;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.picture,
  });

  // jika gagal login, maka user akan diisi dengan UserModel.empty
  static final empty = UserModel(id: '', name: '', email: '');  

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, email, picture];

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? picture,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      picture: picture ?? this.picture,
    );
  }

  bool get isEmpty => this == UserModel.empty;

  bool get isNotEmpty => this != UserModel.empty;

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      email: email,
      picture: picture,
    );
  }

  static UserModel fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      name: entity.name,
      email: entity.email,
      picture: entity.picture,
    );
  }

}
