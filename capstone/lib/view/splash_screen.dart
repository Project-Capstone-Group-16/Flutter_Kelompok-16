import 'package:flutter/material.dart';

import '../components/color_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   goToForgotPasswordScreen();
  //   super.initState();
  // }

  // void goToForgotPasswordScreen() async {
  //   await Future.delayed(const Duration(seconds: 2));
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => ForgotPassword()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
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
