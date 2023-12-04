import 'package:flutter/material.dart';
import 'package:flutter_clean_template/app/config/constant.dart';
import 'package:flutter_clean_template/app/config/theme.dart';
import 'package:flutter_clean_template/presentation/controllers/auth/auth_binding.dart';
import 'package:get/get.dart';

import 'presentation/page/home/home_page.dart';

void main() async {
  await initServices();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    const theme = CustomTheme();
    return GetMaterialApp(
      title: 'Flutter Clean Architecture',
      themeMode: themeMode,
      theme: theme.toThemeData(),
      darkTheme: theme.toThemeDataDark(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      initialBinding: AuthBinding(),
      home: const HomePage(),
    );
  }
}
