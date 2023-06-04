import 'package:flutter/material.dart';

import 'package:capstone/components/color_path.dart';

class EstimasiBiayaPerHariScreen extends StatelessWidget {
  const EstimasiBiayaPerHariScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
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

                  const Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                       'Estimasi',
                       style: TextStyle(
                         fontSize: 23,
                         color: ColorPath.textcolor1,
                         fontWeight: FontWeight.w600,
                       ),
                      ),
                    ),
                    Text(
                    'Per Hari',
                    style: TextStyle(
                      fontSize: 15,
                      color: ColorPath.textcolor1,
                      fontWeight: FontWeight.w600,
                    ),
                        )
                  ],
                ),
                
              ],
            ),

            const SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.fromLTRB(8,80,8,20),
              child: Image.asset('assets/images/estimasiharga1.png'),
            )
          ],
        )
        ),
    );
  }
}