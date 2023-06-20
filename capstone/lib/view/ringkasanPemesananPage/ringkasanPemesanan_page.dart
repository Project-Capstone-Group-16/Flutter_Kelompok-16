import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:capstone/components/color_path.dart';
import 'package:capstone/model/controller/category_controller.dart';
import 'package:capstone/model/controller/lokerlocation_controller.dart';
import 'package:capstone/components/all_button.dart';
import 'package:capstone/screen.dart';

class RingkasanPemesananPage extends StatefulWidget {
  const RingkasanPemesananPage({super.key});

  @override
  State<RingkasanPemesananPage> createState() => _RingkasanPemesananPageState();
}

class _RingkasanPemesananPageState extends State<RingkasanPemesananPage> {
  @override
  Widget build(BuildContext context) {
    final _categoryController = Get.find<CategoryController>();
    final alamatLokerController = Get.find<SelectedLokerAddress>();
    final selectedCategoryImage = _categoryController.selectedCategoryImage;
    final selectedLokerAddress =
        alamatLokerController.selectedLokerAddress.value;

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
                const SizedBox(width: 15),
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
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      width: 500,
                      height: 149,
                      decoration: BoxDecoration(
                          color: ColorPath.primary,
                          border: Border.all(color: Colors.black, width: 0.8),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, bottom: 10, top: 10),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          selectedCategoryImage.value),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, bottom: 10, top: 10),
                                child: Container(
                                  width: 185,
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      selectedLokerAddress,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 15,
                                left: 20,
                                child: Text(
                                  'Loker Kecil',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(36, 230, 50, 5),
              child: Text(
                'Alamat Pemesan',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorPath.background,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 257.0, left: 20),
              child: Container(
                width: 352,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Masukkan Alamat Pemesan',
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(36, 320, 50, 5),
              child: Text(
                'Nama Pemesan',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorPath.background,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 348.0, left: 20),
              child: Container(
                width: 352,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Masukkan Nama Pemesan',
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(36, 412, 50, 5),
              child: Text(
                'Nomor Telpon Pemesan',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorPath.background,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 440.0, left: 20),
              child: Container(
                width: 352,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Masukkan Nomor Telpon Pemesan',
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 610),
              child: Row(
                children: [
                  Container(
                    width: 195,
                    height: 50,
                    decoration: BoxDecoration(
                        color: ColorPath.primary,
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.6,
                        )),
                    child: const Center(
                      child: Text(
                        'Total Harga',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 92, 90, 90),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 195,
                    height: 50,
                    decoration: BoxDecoration(
                        color: ColorPath.primary,
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        )),
                    child: const Center(
                      child: Text(
                        'Rp45.000',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: ColorPath.textcolor1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 710),
              child: AllButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MetodePembayaranScreen()));
                },
                text: 'Lanjut',
                backgroundColor: ColorPath.background,
                textColor: ColorPath.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
