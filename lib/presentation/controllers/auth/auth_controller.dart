import 'package:flutter_clean_template/app/services/local_storage.dart';
import 'package:flutter_clean_template/domain/entities/user.dart';
import 'package:flutter_clean_template/domain/usecases/signup_use_case.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  AuthController(this._loginUseCase);
  final SignUpUseCase _loginUseCase;
  final store = Get.find<LocalStorageService>();
  var isLoggedIn = false.obs;

  User? get user => store.user;

  @override
  void onInit() async {
    super.onInit();
    isLoggedIn.value = store.user != null;
  }

  signUpWith(String username) async {
    try {
      final user = await _loginUseCase.execute(username);
      store.user = user;
      isLoggedIn.value = true;
      isLoggedIn.refresh();
    } catch (error) {}
  }

  logout() {
    store.user = null;
    isLoggedIn.value = false;
  }
}
