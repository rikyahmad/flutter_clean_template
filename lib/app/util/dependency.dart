import 'package:flutter_clean_template/data/repositories/auth_repository.dart';
import 'package:get/get.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => AuthenticationRepository());
    //Get.lazyPut(() => ArticleRepositoryIml());
  }
}
