import 'dart:async';

import 'package:capstone/screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/color_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 10), () {
      Get.to(const LandingPage());
    });
    return Scaffold(
      backgroundColor: ColorPath.background,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_screen.jpg'),
          ),
        ),
      ),
    );
  }
}
