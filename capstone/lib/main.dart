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
<<<<<<< HEAD
      initialRoute: AppRoute.estimasi_biaya_screen,
=======
      initialRoute: AppRoute.durasi_penitipan_screen,

>>>>>>> 85739fe4cc38d5f6c2713577aeebb57bfdb6d65b
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
