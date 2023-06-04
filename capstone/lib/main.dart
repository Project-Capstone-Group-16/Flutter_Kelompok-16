import 'package:flutter/material.dart';

import 'route/app_page.dart';
import 'route/app_route.dart';
import 'model/controller/auth_controller.dart';

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
      initialRoute: AppRoute.dashboard_screen,
      debugShowCheckedModeBanner: false,
      initialBinding: BindingsBuilder(() {
        Get.put<Auth>(Auth());
      }),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
    );
  }
}
