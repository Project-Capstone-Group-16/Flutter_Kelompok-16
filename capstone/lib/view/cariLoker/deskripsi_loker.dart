import 'package:capstone/components/all_button.dart';
import 'package:capstone/screen.dart';
import 'package:flutter/material.dart';
import '../../components/color_path.dart';

import 'package:get/get.dart';

import 'package:capstone/model/controller/selectedLokerimage_controller.dart';
import 'package:capstone/model/controller/lokerlocation_controller.dart';
import 'package:capstone/model/controller/dropdownvalue_controller.dart';
import 'package:capstone/model/controller/favorite_controller.dart';

import 'package:favorite_button/favorite_button.dart';

class DeskripsiLoker extends StatefulWidget {
  const DeskripsiLoker({super.key});

  @override
  State<DeskripsiLoker> createState() => _DeskripsiLokerState();
}
 
class _DeskripsiLokerState extends State<DeskripsiLoker> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final _selectedlokerimagecontroller = Get.find<SelectedLokerImage>();
    final _selectedlokeraddresscontroller = Get.find<SelectedLokerImage>();
    final _selectedlokerdescriptioncontroller = Get.find<SelectedLokerImage>();
    final _selectedLokerKapasitas = Get.find<SelectedLokerKapasitas>();

    final selectedLokerImage =
        _selectedlokerimagecontroller.selectedLokerImage.value;
    final selectedLokerAddress =
        _selectedlokeraddresscontroller.selectedLokerAddress.value;
    final selectedLokerDescription =
        _selectedlokerdescriptioncontroller.selectedLokerDescription.value;
    final selectedLokerKapasitas=
      _selectedLokerKapasitas.selectedLokerKapasitas.value;

    void addSelectedLokerAddress(String selectedLokerAddress) {
      final alamatLokerController = Get.find<SelectedLokerAddress>();
      alamatLokerController.addSelectedLokerAddress(selectedLokerAddress);
    }
    void addToFavorite(String selectedLokerImage, String selectedLokerAddress){
      final favoriteController= Get.find<FavoriteController>();
      favoriteController.addToFavorite(selectedLokerImage, selectedLokerAddress);
    }


 
    return Scaffold(
      backgroundColor: ColorPath.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                Text(
                  '$selectedLokerKapasitas Locker',
                  style: const TextStyle(
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
                            border: Border.all(color: Colors.black, width: 0.8),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            image: DecorationImage(
                                image: NetworkImage(selectedLokerImage),
                                fit: BoxFit.cover)),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 10),
                        child: FavoriteButton(
                        isFavorite: Get.find<FavoriteController>().isFavorited(selectedLokerImage, selectedLokerAddress),
                        iconSize: 40.0,
                        valueChanged: (isFavorite) {
                          final favoriteController = Get.find<FavoriteController>();
                          if (isFavorite) {
                            favoriteController.addToFavorite(selectedLokerImage, selectedLokerAddress);
                          } else {
                            int index = favoriteController.favoriteItems.indexWhere(
                              (item) => 
                              item['selectedLokerImage'] == selectedLokerImage && 
                              item['selectedLokerAddress'] == selectedLokerAddress
                              );
                            if (index != -1) {
                              favoriteController.removeItem(index);
                              Get.snackbar(
                                'Success', 
                                "Removed from Bookmarks",
                                backgroundColor: Colors.black,
                                colorText: Colors.white,
                              );
                            }
                          }
                        },
                                          ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, right: 10),
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
                    selectedLokerAddress,
                    style: const TextStyle(
                      fontSize: 12,
                      color: ColorPath.alamat,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
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
                    selectedLokerDescription,
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
                bottom: 50,
                left: 100,
                child: AllButton(
                    onTap: () {
                      addSelectedLokerAddress(selectedLokerAddress);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DurasiPenitipan(),
                      ));
                    },
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
