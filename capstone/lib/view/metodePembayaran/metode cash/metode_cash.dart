// ignore_for_file: prefer_const_constructors

import 'package:capstone/view/metodePembayaran/metode%20cash/cash_dirumah.dart';
import 'package:flutter/material.dart';

import 'cash_ditoko.dart';
import '../metodepembayaran.dart';

class MetodeCash extends StatefulWidget {
  const MetodeCash({super.key});

  @override
  State<MetodeCash> createState() => _MetodeCashState();
}

class _MetodeCashState extends State<MetodeCash> {
  bool buttonBayarDiToko = false;
  bool buttonBayarDiRumah = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      setState(() {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MetodePembayaranScreen()));
                      });
                    },
                  ),
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
            SizedBox(height: 10),
            Container(
              width: 358,
              height: 345,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(width: 0.5, color: Colors.blueGrey),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    ListTile(
                      splashColor: Colors.grey,
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFF1652F9),
                        child: Image.asset('assets/images/vectorFile.png'),
                      ),
                      title: Text(
                        'Metode Cash',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buttonBayarDiToko = !buttonBayarDiToko;
                            buttonBayarDiRumah = false;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (buttonBayarDiToko) {
                              return Color(0xFF100E83);
                            }
                            return Color(0xFFEEF9F7);
                          }),
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (buttonBayarDiToko) {
                              return Color(
                                  0xFFF4FAFB); //  Warna tulisan saat button ditekan
                            }
                            return Colors.black;
                          }),
                          fixedSize: MaterialStateProperty.resolveWith<Size>(
                            (states) {
                              return Size(295, 43);
                            },
                          ),
                        ),
                        child: Row(
                          children: [
                            IconTheme(
                                data: IconThemeData(
                                  color: buttonBayarDiToko
                                      ? Color(0xFFF4FAFB)
                                      : Colors.blue,
                                ),
                                child: Icon(
                                  Icons.attach_money_rounded,
                                )),
                            SizedBox(width: 10),
                            Text('Bayar di toko'),
                          ],
                        )),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buttonBayarDiRumah = !buttonBayarDiRumah;
                            buttonBayarDiToko = false;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (buttonBayarDiRumah) {
                              return Color(0xFF100E83);
                            }
                            return Color(0xFFEEF9F7);
                          }),
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (buttonBayarDiRumah) {
                              return Color(
                                  0xFFF4FAFB); //  Warna tulisan saat button ditekan
                            }
                            return Colors.black;
                          }),
                          fixedSize: MaterialStateProperty.resolveWith<Size>(
                            (states) {
                              return Size(295, 43);
                            },
                          ),
                        ),
                        child: Row(
                          children: [
                            IconTheme(
                                data: IconThemeData(
                                  color: buttonBayarDiRumah
                                      ? Color(0xFFF4FAFB)
                                      : Color(0xFF1677FF),
                                ),
                                child: Icon(
                                  Icons.attach_money_rounded,
                                )),
                            SizedBox(width: 10),
                            Text('Bayar di rumah'),
                          ],
                        )),
                    const SizedBox(height: 80),
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
                          if (buttonBayarDiToko) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CashDiToko()));
                          }
                          if (buttonBayarDiRumah) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CashDirumah()));
                          } else {
                            print(
                                'Tidak ada yang di pilih'); // Menampilkan 'Tidak ada yang di pilih' ke debug console
                          }
                        },
                        child: Text('Pilih'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
