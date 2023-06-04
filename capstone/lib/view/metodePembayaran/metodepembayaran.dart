// ignore_for_file: prefer_const_constructors

import 'package:capstone/view/metodePembayaran/metode%20kartu%20debit/metode_kartu_debit.dart';
import 'package:flutter/material.dart';

import 'metode cash/metode_cash.dart';

class MetodePembayaranScreen extends StatefulWidget {
  const MetodePembayaranScreen({super.key});

  @override
  State<MetodePembayaranScreen> createState() => MetodePembayaranScreenState();
}

class MetodePembayaranScreenState extends State<MetodePembayaranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF9F7),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: 46, // Tinggi AppBar
              color: Colors.transparent, // Warna AppBar
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    color: Color(0xFF1652F9),
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
                        color: Color(0xFF1652F9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // width: 391,
              // height: 214,
              margin: const EdgeInsets.only(top: 8),
              child: Image.asset(
                'assets/images/Pembayaran_pict.png',
                // width: 391,
                // height: 214,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 0.5, color: Colors.blueGrey)),
              child: Column(
                children: [
                  ListTile(
                    splashColor: Colors.grey,
                    leading: CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0xFF1652F9),
                      child: Image.asset('assets/images/vectorFile.png'),
                    ),
                    title: Text(
                      'Metode Cash',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    onTap: () {
                      // Navigasi ke halaman pemilihan cara pembayaran untuk Metode Cash
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MetodeCash()),
                      );
                    },
                  ),
                  const Divider(color: Colors.blueGrey),
                  ListTile(
                    // focusColor: Colors.red,
                    splashColor: Colors.grey,
                    leading: CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0xFF1652F9),
                      child: Image.asset('assets/images/vectorFile.png'),
                    ),
                    title: const Text(
                      'Metode Kartu Debit',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    onTap: () {
                      // Navigasi ke halaman pemilihan cara pembayaran untuk Metode Pembayaran 2
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MetodeKartuDebit()),
                      );
                    },
                  ),
                  const Divider(color: Colors.blueGrey),
                  ListTile(
                    splashColor: Colors.grey,
                    leading: CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0xFF1652F9),
                      child: Image.asset('assets/images/vectorFile.png'),
                    ),
                    title: const Text(
                      'Metode E-Wallet',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    onTap: () {
                      // Navigasi ke halaman pemilihan cara pembayaran untuk Metode Pembayaran 3
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) =>
                      //           const PemilihanMetodePembayaran()),
                      // );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}