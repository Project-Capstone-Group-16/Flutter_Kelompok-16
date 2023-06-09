// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:capstone/components/color_path.dart';
import 'package:capstone/view/metodePembayaran/metode%20kartu%20debit/metode_kartu_debit_terakhir.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../metodepembayaran.dart';

class MetodeKartuDebit extends StatefulWidget {
  const MetodeKartuDebit({super.key});

  @override
  State<MetodeKartuDebit> createState() => _MetodeKartuDebitState();
}

class _MetodeKartuDebitState extends State<MetodeKartuDebit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        backgroundColor: Color(0xFFEEF9F7),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Positioned(
                  top: 35,
                  left: 50,
                  child: Container(
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
                        SizedBox(width: 20),
                        Padding(
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
                ),
                const SizedBox(height: 10),
                Container(
                  width: 358,
                  height: 380,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: ColorPath.background2,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.blueGrey,
                      )),
                  child: Container(
                    color: ColorPath.white,
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListTile(
                          splashColor: Colors.blueGrey,
                          leading: CircleAvatar(
                            backgroundColor: ColorPath.background,
                            child:
                                Image.asset('assets/images/vectorFile.png'),
                          ),
                          title: Text(
                            'Metode Kartu Debit',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Masukkan No Kartu',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF2D64FB),
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              // color: Colors.transparent,
                              width: 320,
                              height: 43,
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  // labelText: 'Masukkan No Kartu',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0))),
                                  // hintText: 'Nomor Kartu',
                                  // contentPadding:
                                  //     EdgeInsets.symmetric(vertical: 10.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Masukkan CVV Kartu',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF2D64FB),
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 320,
                              height: 43,
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  // labelText: 'Masukkan No Kamu',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0))),
                                  // hintText: 'Nomor Kartu',
                                  // contentPadding:
                                  //     EdgeInsets.symmetric(vertical: 10.0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                          ],
                        ),
                        // SizedBox(height: 10),
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
                                    builder: (context) =>
                                        KartuDebitSelesai()));
                          },
                          child: Text('Tambah'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
