import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String email;
  final String name;
  final String? picture;

  const UserEntity(
      {required this.id,
      required this.email,
      required this.name,
      required this.picture});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'name': name,
      'picture': picture,
    };
  }

  static UserEntity fromMap(Map<String, dynamic> map) {
    return UserEntity(
      id: map['id'] as String,
      email: map['email'] as String,
      name: map['name'] as String,
      picture: map['picture'] != null ? map['picture'] as String : null,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, email, name, picture];

  @override
  String toString() {
    return ''''
    UserEntity {
      id: $id,
      email: $email,
      name: $name,
      picture: $picture,
    }
''';
  }
}
