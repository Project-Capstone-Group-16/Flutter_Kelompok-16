import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      color: Colors.black,
      image: DecorationImage(image:AssetImage('assets/images/landingpage3.png'))
      ),
    );
  }
}