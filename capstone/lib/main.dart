import 'package:capstone/model/controller/lokerlocation_controller.dart';
import 'package:flutter/material.dart';

import 'route/app_page.dart';
import 'route/app_route.dart';

import 'package:capstone/model/controller/category_controller.dart';
import 'package:capstone/model/controller/selectedLokerimage_controller.dart';
import 'model/controller/cariloker_controller.dart';
import 'model/controller/favorite_controller.dart';
import 'model/controller/dropdownvalue_controller.dart';

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
        Get.put<CategoryController>(CategoryController());
        Get.put<SelectedLokerImage>(SelectedLokerImage());
        Get.put<CariLokerController>(CariLokerController());
        Get.put<SelectedLokerAddress>(SelectedLokerAddress());
        Get.put<FavoriteController>(FavoriteController());
        Get.put<SelectedLokerKapasitas>(SelectedLokerKapasitas());
      }),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
    );
  }
}
