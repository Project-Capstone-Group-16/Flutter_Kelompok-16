import 'package:flutter/material.dart';

import '../../components/color_path.dart';

class Favorit_Loker extends StatefulWidget {
  const Favorit_Loker({super.key});

  @override
  State<Favorit_Loker> createState() => _Favorit_LokerState();
}

class _Favorit_LokerState extends State<Favorit_Loker> {
  int _selectedValue = 0;

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
                'Favorit',
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
