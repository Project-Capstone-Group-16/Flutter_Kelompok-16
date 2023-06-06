// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:capstone/screen.dart';
import 'package:capstone/view/metodePembayaran/metode%20kartu%20debit/metode_kartu_debit.dart';
import 'package:flutter/material.dart';

class KartuDebitSelesai extends StatefulWidget {
  const KartuDebitSelesai({super.key});

  @override
  State<KartuDebitSelesai> createState() => _KartuDebitSelesaiState();
}

class _KartuDebitSelesaiState extends State<KartuDebitSelesai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF9F7),
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
                        Navigator.of(context)
                            .pop(MaterialPageRoute(builder: (context) {
                          return MetodeKartuDebit();
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
                    title: const Text(
                      'Metode Kartu Debit',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    trailing: Container(
                      width: 100,
                      height: 26,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                        color: Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: SizedBox(
                        child: Text(
                          'No Kartu: 99211189999',
                          style: TextStyle(
                              color: Color(0xFFF05C09),
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      // // child: Row(
                      // //   mainAxisSize: MainAxisSize.min,
                      // //   children: [
                      // //     Text(
                      // //       'No Kartu: ',
                      // //       style: TextStyle(
                      // //         color: Color(0xFFF05C09),
                      // //         fontSize: 12,
                      // //       ),
                      // //     ),
                      // //   ],
                      // ),
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
              child: Text('Selesai'),
            ),
          ],
        ),
      ),
    );
  }
}
