import 'package:flutter/material.dart';

import '../../../route/dashboard_screen.dart';

class KartuDebitSelesai extends StatefulWidget {
  const KartuDebitSelesai({super.key});

  @override
  State<KartuDebitSelesai> createState() => _KartuDebitSelesaiState();
}

class _KartuDebitSelesaiState extends State<KartuDebitSelesai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFEEF9F7),
      body: SafeArea(
        child: SingleChildScrollView(
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
                          color: const Color(0xFF1652F9),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(width: 20),
                        const Padding(
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
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
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
                            'Metode Kartu Debit',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                          trailing: Container(
                            width: 100,
                            height: 26,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE0E0E0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const SizedBox(
                              child: Text(
                                'No Kartu: 99211189999',
                                style: TextStyle(
                                    color: Color(0xFFF05C09),
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => const ()),
                              // );
                            });
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
      ),
    );
  }
}
