import 'package:flutter_clean_template/domain/entities/user.dart';
import 'package:flutter_clean_template/domain/repositories/auth_repository.dart';

class AuthenticationRepositoryIml extends AuthenticationRepository {
  @override
  Future<User> signUp(String username) async {
    //Fake sign up action
    await Future.delayed(const Duration(seconds: 1));
    return User(username: username);
  }
}
