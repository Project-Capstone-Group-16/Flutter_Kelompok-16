import 'package:flutter/material.dart';
import 'color_path.dart';

class BackGroundPage extends StatelessWidget {
  const BackGroundPage({
    Key? key,
    required this.onBackPressed,
    required this.child,
  }) : super(key: key);

  final VoidCallback onBackPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorPath.background,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 40,
              left: 10,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: onBackPressed,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 100),
                  child: Image.asset(
                    'assets/images/homelogo.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: height * 2.5),
              decoration: const BoxDecoration(
                color: ColorPath.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
