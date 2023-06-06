// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:capstone/screen.dart';
import 'package:flutter/material.dart';

class MetodeEWallet extends StatefulWidget {
  const MetodeEWallet({super.key});

  @override
  State<MetodeEWallet> createState() => _MetodeEWalletState();
}

class _MetodeEWalletState extends State<MetodeEWallet> {
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
                      setState(() {
                        Navigator.of(context)
                            .pop(MaterialPageRoute(builder: (context) {
                          return MetodePembayaranScreen();
                        }));
                      });
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
            const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(width: 0.5, color: Colors.blueGrey),
              ),
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
                    title: const Text(
                      'Metode E-Wallet',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/E-Invent.png',
                              scale: 20,
                            ),
                            const SizedBox(width: 30),
                            Text(
                              'E - Invent',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/E-Invent.png',
                            scale: 20,
                          ),
                          const SizedBox(width: 30),
                          Image.asset(
                            'assets/images/E-Invent.png',
                            scale: 20,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/E-Invent.png',
                            scale: 20,
                          ),
                          const SizedBox(width: 30),
                          Image.asset(
                            'assets/images/E-Invent.png',
                            scale: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
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
                              builder: (context) => MetodePembayaranScreen()));
                    },
                    child: Text(
                      'Pilih',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            // const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
