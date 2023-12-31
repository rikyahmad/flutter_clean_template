import 'package:flutter_clean_template/data/repositories/auth_repository.dart';
import 'package:flutter_clean_template/domain/usecases/signup_use_case.dart';
import 'package:flutter_clean_template/presentation/controllers/auth/auth_controller.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpUseCase(Get.find<AuthenticationRepository>()));
    Get.put(AuthController(Get.find()), permanent: true);
  }
}
