import 'package:flutter/material.dart';

import 'package:capstone/components/color_path.dart';



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

                             child: const Column(
                              children: [
                                SizedBox(height: 10,),
                                 Padding(
                                  padding: EdgeInsets.only(right: 130, top: 20),
                                  child: Text(
                                    'Estimasi Loker Kecil',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: ColorPath.textcolor1,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    ),
                                ),
                                 Row(
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
                                      'Rp15.000/Hari',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorPath.textcolor1, 
                                      ),
                                      ),
                                  ],
                                ),

                                 Padding(
                                  padding: EdgeInsets.only(right: 10,left: 17.5),
                                  child: Text(
                                    'Keterangan : Harga dapat berubah sewaktu-waktu terjadi perubahan harga',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
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

                             child: const Column(
                              children: [
                                SizedBox(height: 10,),
                                 Padding(
                                  padding: EdgeInsets.only(right: 100, top: 20),
                                  child: Text(
                                    'Estimasi Loker Sedang',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: ColorPath.textcolor1,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    ),
                                ),
                                 Row(
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
                                      'Rp20.000/Hari',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorPath.textcolor1, 
                                      ),
                                      ),
                                  ],
                                ),

                                 Padding(
                                  padding: EdgeInsets.only(right: 10,left: 17.5),
                                  child: Text(
                                    'Keterangan : Harga dapat berubah sewaktu-waktu terjadi perubahan harga',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
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

                             child: const Column(
                              children: [
                                 SizedBox(height: 10,),
                                 Padding(
                                  padding: EdgeInsets.only(right: 120, top: 20),
                                  child: Text(
                                    'Estimasi Loker Besar',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: ColorPath.textcolor1,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    ),
                                ),
                                 Row(
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
                                      'Rp30.000/Hari',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorPath.textcolor1, 
                                      ),
                                      ),
                                  ],
                                ),

                                 Padding(
                                  padding: EdgeInsets.only(right: 10,left: 17.5),
                                  child: Text(
                                    'Keterangan : Harga dapat berubah sewaktu-waktu terjadi perubahan harga',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
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