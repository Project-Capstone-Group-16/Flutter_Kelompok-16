import 'package:capstone/components/color_path.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final List<String> imgList = [
    'assets/images/landingpage1.png',
    'assets/images/landingpage2.png',
    'assets/images/landingpage1.png',
    'assets/images/landingpage2.png'
  ];

  final CarouselController _controller = CarouselController();

  int _currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(
          child: CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              autoPlay: true,
              onPageChanged: (index, _) {
                setState(() {
                  _currentSlide = index;
                });
              },
            ),
            carouselController: _controller,
            items: imgList.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                      height: height,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((item) {
            int index = imgList.indexOf(item);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentSlide == index ? Colors.blue : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
