import 'package:flutter/material.dart';

import '../../components/color_path.dart';

class Pilih_bahasa extends StatefulWidget {
  const Pilih_bahasa({super.key});

  @override
  State<Pilih_bahasa> createState() => _Pilih_bahasaState();
}

class _Pilih_bahasaState extends State<Pilih_bahasa> {
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
                'Bahasa',
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
