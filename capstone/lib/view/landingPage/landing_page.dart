import 'package:capstone/view/LoginRegisterPage/login_register.dart';
import 'package:capstone/components/color_path.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'intro_screen1.dart';
import 'intro_screen2.dart';
import 'intro_screen3.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.70),
            // mainAxisAlignment: MainAxisAlignment.end,
            child: SmoothPageIndicator(controller: _controller, count: 3),
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Padding(
              padding: const EdgeInsets.only(top: 777),
              child: Column(
                children: [
                  if (onLastPage)
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginRegister(),
                            ),
                          );
                        },
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              'Mulai',
                              style: TextStyle(
                                fontSize: 18,
                                color: ColorPath.background,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ))
                  else
                    GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Center(
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: Text(
                                'Lewati',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: ColorPath.background,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
