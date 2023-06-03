import 'package:flutter/material.dart';

import '../../components/color_path.dart';

class Faq_Page extends StatefulWidget {
  const Faq_Page({super.key});

  @override
  State<Faq_Page> createState() => _Faq_PageState();
}

class _Faq_PageState extends State<Faq_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.background2,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, -0.96),
              child: Text(
                'Pertanyaan Umum',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: ColorPath.background,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.9, -0.99),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                ),
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
