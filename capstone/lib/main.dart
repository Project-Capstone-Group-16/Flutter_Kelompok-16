import 'package:flutter/material.dart';

import 'route/app_page.dart';
import 'route/app_route.dart';
import 'model/controller/auth_controller.dart';
import 'package:capstone/model/controller/category_controller.dart';

import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPage.list,

      initialRoute: AppRoute.splash_screen,

      debugShowCheckedModeBanner: false,
      initialBinding: BindingsBuilder(() {
        Get.put<Auth>(Auth());
        Get.put<CategoryController>(CategoryController());
      }),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
    );
  }
}
