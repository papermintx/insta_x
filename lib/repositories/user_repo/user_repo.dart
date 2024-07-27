import 'package:firebase_auth/firebase_auth.dart';
import 'package:insta_x/models/user_model.dart';

abstract class UserRepo {
  Stream<User?> get user;

  Future<void> signIn(String email, String password);

  Future<void> logOut();

  Future<UserModel> signUp(UserModel myUser, String password);

  Future<void> resetPassword(String email);

  Future<void> setUserData(UserModel user);

  Future<UserModel> getMyUser(String myUserId);

  Future<String> uploadPicture(String file, String userId);
}
