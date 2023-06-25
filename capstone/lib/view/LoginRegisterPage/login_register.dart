import 'package:capstone/screen.dart';
import 'package:flutter/material.dart';

import 'package:capstone/components/color_path.dart';
import 'package:capstone/components/all_button.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({super.key});

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: ColorPath.background,
              image: DecorationImage(
                image: AssetImage('assets/images/inventron.jpg'),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 60,
            child: Center(
              child: AllButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                text: "Masuk",
                backgroundColor: ColorPath.primary,
                textColor: ColorPath.textcolor1,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 245,
            child: Center(
              child: AllButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                text: "Daftar",
                backgroundColor: ColorPath.primary,
                textColor: ColorPath.textcolor1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
