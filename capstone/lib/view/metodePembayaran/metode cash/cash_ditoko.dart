import 'package:flutter/material.dart';

import '../../../screen.dart';

import 'package:capstone/components/color_path.dart';

class CashDiToko extends StatefulWidget {
  const CashDiToko({super.key});

  @override
  State<CashDiToko> createState() => _CashDiTokoState();
}

bool buttonMetodeCashDitoko = false;

class _CashDiTokoState extends State<CashDiToko> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF9F7),
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
                      Positioned(
                      top: 35,
                      left: 10,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(width: 65),
                    const Text(
                      'Pembayaran',
                      style: TextStyle(
                        fontSize: 23,
                        color: ColorPath.textcolor1,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Image.asset(
                    'assets/images/Pembayaran_pict.png',
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
                        focusColor: Colors.red,
                        splashColor: Colors.grey,
                        leading: CircleAvatar(
                          radius: 15,
                          backgroundColor: const Color(0xFF1652F9),
                          child: Image.asset('assets/images/vectorFile.png'),
                        ),
                        title: const Text(
                          'Metode Cash',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        trailing: Container(
                          width: 117,
                          height: 26,
                          padding:
                              const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                            color: const Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Bayar di Toko',
                                style: TextStyle(
                                  color: Color(0xFFF05C09),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
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
                const SizedBox(
                  height: 350,
                ),
                SizedBox(
                  width: 169,
                  height: 41,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      backgroundColor: const Color(0xFF1677FF),
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
                                const SizedBox(height: 40),
                                const Text(
                                  'Sukses',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 0),
                                const Text(
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
                                      backgroundColor: const Color(0xFF1677FF),
                                      foregroundColor: Colors.white,
                                      elevation: 3,
                                      fixedSize: const Size(150, 41)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DashboardScreen()));
                                  },
                                  child: const Text('Selesai'),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text('Selesai'),
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
