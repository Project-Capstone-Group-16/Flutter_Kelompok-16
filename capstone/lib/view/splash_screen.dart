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
    Timer(const Duration(seconds: 3), () {
      Get.to(const LandingPage());
    });
    return Scaffold(
      backgroundColor: ColorPath.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/homelogo.png',
              width: 200, // Sesuaikan dengan ukuran yang diinginkan
              height: 200, // Sesuaikan dengan ukuran yang diinginkan
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                'Inventron',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
