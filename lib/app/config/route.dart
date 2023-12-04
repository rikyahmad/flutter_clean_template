import 'package:flutter_clean_template/app/config/page.dart';
import 'package:flutter_clean_template/presentation/controllers/auth/auth_binding.dart';
import 'package:flutter_clean_template/presentation/page/home/home_page.dart';
import 'package:get/get.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: AppPage.home,
      page: () => const HomePage(),
      binding: AuthBinding(),
    ),
  ];
}
