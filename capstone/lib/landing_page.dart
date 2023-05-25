import 'package:capstone/components/color_path.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'view/intro_screen1.dart';
import 'view/intro_screen2.dart';
import 'view/intro_screen3.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  
  PageController _controller= PageController();

  bool onLastPage=false;

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage=(index==2);
              });
            },
            children:const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          Container(
            alignment: Alignment(0, 0.70),
              // mainAxisAlignment: MainAxisAlignment.end,
              child: SmoothPageIndicator(controller: _controller, count: 3),
            ),
            
          Container(
            alignment: Alignment(0, 0.8),
            child: Padding(
              padding: const EdgeInsets.only(top: 800),
              child: Column(
                children: [
                  onLastPage?
                  GestureDetector(
                            onTap: (){
                             
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
                            )
                            ):      
                  GestureDetector(
                            onTap: (){
                               _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
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
                                  'Lewati',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: ColorPath.background,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                              ),
                            )
                            ),
                ],
              ),
            ),
            ),

          
        ],
      ),
    );
  }
}