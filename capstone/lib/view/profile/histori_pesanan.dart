import 'package:flutter/material.dart';

import '../../components/color_path.dart';

class Histori_Pesanan extends StatefulWidget {
  const Histori_Pesanan({super.key});

  @override
  State<Histori_Pesanan> createState() => _Histori_PesananState();
}

class _Histori_PesananState extends State<Histori_Pesanan> {
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
                'Histori',
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
