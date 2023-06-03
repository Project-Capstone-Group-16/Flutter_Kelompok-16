import 'package:flutter/material.dart';

import 'package:capstone/components/color_path.dart';
import 'package:capstone/screen.dart';


class EstimasiBiayaScreen extends StatelessWidget {
  const EstimasiBiayaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Row(
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

                const SizedBox(width: 100),

                const Text(
                  'Estimasi',
                  style: TextStyle(
                    fontSize: 23,
                    color: ColorPath.textcolor1,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),

            const SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
              child: Image.asset('assets/images/estimasi.png'),
            ),
            
            Column(
              children: [
                const SizedBox(height: 260,),
                Container(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Container(
                      width: 348,
                      height: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.2,
                        ),
                        borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                             ),

                             child: Column(
                              children: [
                                const SizedBox(height: 10,),
                                const Padding(
                                  padding: EdgeInsets.only(right: 155),
                                  child: Text(
                                    'Estimasi Per Hari',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: ColorPath.textcolor1,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    ),
                                ),
                                const Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 17.5),
                                      child: Text(
                                        'Estimasi Biaya : ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        ),
                                    ),
                                    Text(
                                      'Rp10.000- Rp40.000',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorPath.textcolor1, 
                                      ),
                                      ),
                                  ],
                                ),

                                const Padding(
                                  padding: EdgeInsets.only(right: 10,left: 17.5),
                                  child: Text(
                                    'Keterangan : Harga dapat berubah sewaktu-waktu terjadi perubahan harga',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    ),
                                   ),  
                                   Padding(
                                     padding: const EdgeInsets.only(top:20,left: 220),
                                     child: ElevatedButton(
                                      onPressed: (){
                                        Navigator.of(context).push(
                                        MaterialPageRoute(
                                        builder: (context) => const EstimasiBiayaPerHariScreen(),
                                      ));
                                      }, 
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorPath.textcolor1,
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5,
                                          horizontal: 25,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      child: const Text('Detail'),
                                      ),
                                   ),   
                              ]
                              ),
                             ),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Container(
                      width: 348,
                      height: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.2,
                        ),
                        borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                             ),

                             child: Column(
                              children: [
                                const SizedBox(height: 10,),
                                const Padding(
                                  padding: EdgeInsets.only(right: 140),
                                  child: Text(
                                    'Estimasi Per Bulan',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: ColorPath.textcolor1,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    ),
                                ),
                                const Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 17.5),
                                      child: Text(
                                        'Estimasi Biaya : ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        ),
                                    ),
                                    Text(
                                      'Rp50.000- Rp100.000',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorPath.textcolor1, 
                                      ),
                                      ),
                                  ],
                                ),

                                const Padding(
                                  padding: EdgeInsets.only(right: 10,left: 17.5),
                                  child: Text(
                                    'Keterangan : Harga dapat berubah sewaktu-waktu terjadi perubahan harga',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    ),
                                   ),  
                                   Padding(
                                     padding: const EdgeInsets.only(top:20,left: 220),
                                     child: ElevatedButton(
                                      onPressed: (){
                                        Navigator.of(context).push(
                                        MaterialPageRoute(
                                        builder: (context) => const EstimasiBiayaPerBulanScreen(),
                                      ));
                                      }, 
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorPath.textcolor1,
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5,
                                          horizontal: 25,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      child: const Text('Detail'),
                                      ),
                                   ),   
                              ]
                              ),
                             ),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Container(
                      width: 348,
                      height: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.2,
                        ),
                        borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                             ),

                             child: Column(
                              children: [
                                const SizedBox(height: 10,),
                                const Padding(
                                  padding: EdgeInsets.only(right: 135),
                                  child: Text(
                                    'Estimasi Per Tahun',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: ColorPath.textcolor1,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    ),
                                ),
                                const Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 17.5),
                                      child: Text(
                                        'Estimasi Biaya : ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        ),
                                    ),
                                    Text(
                                      'Rp400.000- Rp600.000',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorPath.textcolor1, 
                                      ),
                                      ),
                                  ],
                                ),

                                const Padding(
                                  padding: EdgeInsets.only(right: 10,left: 17.5),
                                  child: Text(
                                    'Keterangan : Harga dapat berubah sewaktu-waktu terjadi perubahan harga',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    ),
                                   ),  
                                   Padding(
                                     padding: const EdgeInsets.only(top:20,left: 220),
                                     child: ElevatedButton(
                                      onPressed: (){
                                        Navigator.of(context).push(
                                        MaterialPageRoute(
                                        builder: (context) => const EstimasiBiayaPerTahunScreen(),
                                      ));
                                      }, 
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorPath.textcolor1,
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5,
                                          horizontal: 25,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      child: const Text('Detail'),
                                      ),
                                   ),   
                              ]
                              ),
                             ),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
        ),
    );
  }
}