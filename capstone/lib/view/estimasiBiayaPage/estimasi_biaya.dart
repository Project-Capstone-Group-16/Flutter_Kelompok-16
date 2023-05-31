import 'package:capstone/components/color_path.dart';
import 'package:flutter/material.dart';

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
                                Row(
                                  
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 155, left: 17),
                                      child: Text(
                                        'Estimasi Biaya : ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        ),
                                    ),
                                    Text(
                                      'Estimasi Biaya : ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      ),
                                  ],
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