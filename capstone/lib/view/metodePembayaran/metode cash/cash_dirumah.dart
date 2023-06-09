// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:capstone/screen.dart';
import 'package:flutter/material.dart';

import 'metode_cash.dart';

class CashDirumah extends StatefulWidget {
  const CashDirumah({super.key});

  @override
  State<CashDirumah> createState() => _CashDirumahState();
}

class _CashDirumahState extends State<CashDirumah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF9F7),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
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
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(width: 20),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 78),
                          child: Text(
                            'Pembayaran',
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1652F9),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
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
                        trailing: Container(
                          width: 117,
                          height: 26,
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Bayar di Rumah',
                                style: TextStyle(
                                  color: Color(0xFFF05C09),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        title: const Text(
                          'Metode Cash',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        onTap: () {
                          setState(() {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const MetodeCash()),
                            // );
                          });
                          // Navigasi ke halaman pemilihan cara pembayaran untuk Metode Pembayaran Kartu Debit
                        },
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
                                        borderRadius:
                                            BorderRadius.circular(1000),
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
                                                DashboardScreen()));
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
          ],
        ),
      ),
    );
  }
}
