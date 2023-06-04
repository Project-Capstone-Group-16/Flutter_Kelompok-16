import 'package:capstone/components/all_button.dart';
import 'package:flutter/material.dart';

import '../../components/color_path.dart';

class CariLoker extends StatefulWidget {
  const CariLoker({super.key});

  @override
  State<CariLoker> createState() => _CariLokerState();
}

class _CariLokerState extends State<CariLoker> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.primary,
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, -0.96),
            child: Text(
              'Lokasi Loker',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorPath.background,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.9, -0.99),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 24,
              ),
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 350,
                  height: 650,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.2),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 3),
                        blurRadius: 2,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.05, 0.50),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: DropdownButtonFormField<String>(
                        value: dropdownValue,
                        items: <String>[
                          'Malang',
                          'Semarang',
                          'Surabaya',
                          'Bandung',
                          'Jakarta'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: 'Pilih Daerah',
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20, // Ubah posisi sesuai kebutuhan Anda
                  child: Image.asset(
                    'assets/images/jerman.png', // Ganti dengan path gambar Anda
                    width: 100,
                    height: 100,
                  ),
                ),
                Positioned(
                  bottom: 30, // Ubah posisi sesuai kebutuhan Anda
                  child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      color: ColorPath.AppbarProfile,
                      borderRadius: BorderRadius.circular(30),
                      shape: BoxShape.rectangle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        'Lanjut',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorPath.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
