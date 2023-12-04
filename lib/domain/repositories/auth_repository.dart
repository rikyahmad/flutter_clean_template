import 'package:flutter_clean_template/domain/entities/user.dart';

abstract class AuthenticationRepository {
  Future<User> signUp(String username);
}
