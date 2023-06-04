import 'package:capstone/components/color_path.dart';
import 'package:flutter/material.dart';

class MetodePembayaranScreen extends StatefulWidget {
  const MetodePembayaranScreen({super.key});

  @override
  State<MetodePembayaranScreen> createState() => MetodePembayaranScreenState();
}

class MetodePembayaranScreenState extends State<MetodePembayaranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.background2,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              color: ColorPath.background2,
              height: 75,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    color: ColorPath.textcolor1,
                    onPressed: () {
                      // Aksi ketika tombol kembali ditekan
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'Pembayaran',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorPath.textcolor1),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
