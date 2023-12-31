import 'package:flutter_clean_template/domain/entities/user.dart';
import 'package:flutter_clean_template/domain/repositories/base_auth_repository.dart';

class AuthenticationRepository extends BaseAuthenticationRepository {
  @override
  Future<User> signUp(String username) async {
    //Fake sign up action
    await Future.delayed(const Duration(seconds: 1));
    return User(username: username);
  }
}
