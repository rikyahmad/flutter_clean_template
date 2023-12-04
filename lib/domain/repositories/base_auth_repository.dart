import 'package:flutter_clean_template/domain/entities/user.dart';

abstract class BaseAuthenticationRepository {
  Future<User> signUp(String username);
}
