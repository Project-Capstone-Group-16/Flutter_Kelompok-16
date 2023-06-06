import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:capstone/components/color_path.dart';
import 'package:capstone/model/controller/category_controller.dart';


class RingkasanPemesananPage extends StatefulWidget {
  const RingkasanPemesananPage({super.key});

  @override
  State<RingkasanPemesananPage> createState() => _RingkasanPemesananPageState();
}

class _RingkasanPemesananPageState extends State<RingkasanPemesananPage> {
  @override
  Widget build(BuildContext context) {

    final _categoryController=Get.find<CategoryController>();
    final selectedCategoryImage=_categoryController.selectedCategoryImage;
    
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
              const SizedBox(width: 20),
              const Text(
                'Ringkasan Pemesanan',
                style: TextStyle(
                  fontSize: 23,
                  color: ColorPath.textcolor1,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),

          const SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.fromLTRB(20,60,20,0),
            child: Container(
              child: Stack(
                children: [
                  Container(
                    width: 500,
                    height: 149,
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
                        )
                    ),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20.0, bottom: 10, top: 10),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.8,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              image: DecorationImage(image: AssetImage(selectedCategoryImage.value),
                              fit: BoxFit.cover)
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:20.0, bottom: 10, top: 10),
                          child: Container(
                            width: 185,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.8,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
          ],
        ),
        ),
    );
  }
}