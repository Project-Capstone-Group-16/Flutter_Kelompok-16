// ignore_for_file: prefer_const_constructors

import 'package:capstone/screen.dart';
import 'package:flutter/material.dart';

class OvoScreen extends StatelessWidget {
  const OvoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF9F7),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: 36,
              color: Colors.transparent,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new_outlined),
                    color: Color(0xFF1652F9),
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const MetodePembayaranScreen()));
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'Pembayaran',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1652F9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Image.asset(
                'assets/images/Pembayaran_pict.png',
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 0.5, color: Colors.blueGrey)),
              child: Column(
                children: [
                  ListTile(
                    focusColor: Colors.red,
                    splashColor: Colors.grey,
                    leading: CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0xFF1652F9),
                      child: Image.asset('assets/images/vectorFile.png'),
                    ),
                    title: Text(
                      'Metode E-Wallet',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    trailing: Container(
                      // width: 117,
                      // height: 26,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ]),
                      child: Image.asset(
                        'assets/images/Ovo.png',
                        scale: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 350),
            SizedBox(
              width: 169,
              height: 41,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  backgroundColor: Color(0xFF1677FF),
                  foregroundColor: Colors.white,
                  elevation: 3,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/images/iconCentang.png',
                              width: 192,
                              height: 153,
                            ),
                            SizedBox(height: 40),
                            Text(
                              'Sukses',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 0),
                            Text(
                              'Selamat barangmu berhasil ditambahkan. Silahkan kembali ke halaman kategori.',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        actions: [
                          Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1000),
                                  ),
                                  backgroundColor: Color(0xFF1677FF),
                                  foregroundColor: Colors.white,
                                  elevation: 3,
                                  fixedSize: Size(150, 41)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MetodePembayaranScreen()));
                              },
                              child: Text('Selesai'),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Selesai'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
