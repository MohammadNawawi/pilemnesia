import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pilemnesia/app/data/services/database.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await initServices();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blue,
      ),
    ),
  );
}

Future<void> initServices() async {
  await Get.putAsync(() => DbService().init());
}
