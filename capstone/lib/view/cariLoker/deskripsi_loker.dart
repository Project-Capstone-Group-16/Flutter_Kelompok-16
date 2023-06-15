import 'package:capstone/components/all_button.dart';
import 'package:flutter/material.dart';
import '../../components/color_path.dart';

import 'package:get/get.dart';

import 'package:capstone/model/controller/selectedLokerImage_controller.dart';
import 'package:capstone/model/controller/cariloker_controller.dart';

class DeskripsiLoker extends StatefulWidget {
  const DeskripsiLoker({super.key});
  

  @override
  State<DeskripsiLoker> createState() => _DeskripsiLokerState();
}

class _DeskripsiLokerState extends State<DeskripsiLoker> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {

    final cariLokerController= Get.find<CariLokerController>();

    final _selectedlokerimagecontroller=Get.find<SelectedLokerImage>();
    final selectedLokerimage=_selectedlokerimagecontroller.selectedLokerImage;

    return Scaffold(
      backgroundColor: ColorPath.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),

                const Text(
                  'Loker',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorPath.background,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        width: 500,
                        height: 350,
                        decoration: BoxDecoration(
                      color: ColorPath.primary,
                      border: Border.all(
                        color: Colors.black, 
                        width: 0.8
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        image: DecorationImage(image: NetworkImage(selectedLokerimage.value),
                        fit: BoxFit.cover
                        )
                    ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          size: 24,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
                
                const Divider(
                  color: Colors.grey, // Atur warna divider sesuai kebutuhan
                  thickness: 1, // Atur ketebalan divider sesuai kebutuhan
                  indent: 20, // Atur jarak inden dari sebelah kiri
                  endIndent: 20, // Atur jarak inden dari sebelah kanan
                ),

                const Padding(
                  padding: EdgeInsets.only(left:30, right: 10),
                  child: Text(
                    'Alamat',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Jl AAnkara No 13, Cieumbeulit Wonokromo, Probolinggo Jawa Timur 124599',
                    style: TextStyle(
                      fontSize: 12,
                      color: ColorPath.alamat,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                const Divider(
                  color: Colors.grey, // Atur warna divider sesuai kebutuhan
                  thickness: 1, // Atur ketebalan divider sesuai kebutuhan
                  indent: 20, // Atur jarak inden dari sebelah kiri
                  endIndent: 20, // Atur jarak inden dari sebelah kanan
                ),

                const SizedBox(height: 10),

                const Divider(
                  color: Colors.grey, // Atur warna divider sesuai kebutuhan
                  thickness: 1, // Atur ketebalan divider sesuai kebutuhan
                  indent: 20, // Atur jarak inden dari sebelah kiri
                  endIndent: 20, // Atur jarak inden dari sebelah kanan
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Deskripsi ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Jl Ankara No 13, Cieumbeulit Wonokromo, Probolinggo Jawa Timur 124599',
                    style: TextStyle(
                      fontSize: 12,
                      color: ColorPath.alamat,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                const Divider(
                  color: Colors.grey, // Atur warna divider sesuai kebutuhan
                  thickness: 1, // Atur ketebalan divider sesuai kebutuhan
                  indent: 20, // Atur jarak inden dari sebelah kiri
                  endIndent: 20, // Atur jarak inden dari sebelah kanan
                ),
              ],
            ),
            
            Positioned(
                bottom: 100,
                left: 100,
                child: AllButton(
                    onTap: () {},
                    text: 'Lanjut',
                    backgroundColor: ColorPath.background,
                    textColor: ColorPath.white)),
            Positioned(
              top: 10,
              left: 16,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                ),
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
