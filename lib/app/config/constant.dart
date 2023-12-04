import 'package:flutter/material.dart';
import 'package:flutter_clean_template/app/services/local_storage.dart';
import 'package:flutter_clean_template/app/util/dependency.dart';
import 'package:get/get.dart';

initServices() async {
  debugPrint('starting services ...');
  await DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => LocalStorageService().init());
  debugPrint('All services started...');
}
