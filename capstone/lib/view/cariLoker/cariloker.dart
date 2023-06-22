import 'package:capstone/components/all_button.dart';
import 'package:capstone/view/cariLoker/deskripsi_loker.dart';
import 'package:flutter/material.dart';

import 'package:capstone/model/controller/cariloker_controller.dart';
import 'package:capstone/model/controller/selectedLokerimage_controller.dart';

import '../../components/color_path.dart';

import 'package:get/get.dart';

class CariLoker extends StatefulWidget {

  const CariLoker({Key? key}) : super(key: key);

  @override
  State<CariLoker> createState() => _CariLokerState();
}

class _CariLokerState extends State<CariLoker> {
  String? dropdownValue;
  String selectedLokerImage = '';
  CariLokerController carilokercontroller = Get.find<CariLokerController>();
  RxList<String> locationList = <String>[].obs;
  RxMap<String, String> locationImages = <String, String>{}.obs;

  void addSelectedLoker(
    String selectedLokerImage,
    String selectedLokerAddress,
    String selectedLokerDescription,
  ) {
    final _selectedlokercontroller = Get.find<SelectedLokerImage>();
    _selectedlokercontroller.addSelectedLokerImage(
      selectedLokerImage,
      selectedLokerAddress,
      selectedLokerDescription,
    );
  }

  @override
  void initState() {
    super.initState();
    carilokercontroller.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
                Obx(() {
                  final selectedLokerAddress = carilokercontroller
                      .locationAddresses[dropdownValue ?? ''];
                  return Text(
                    selectedLokerAddress ?? '',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.transparent,
                      fontWeight: FontWeight.w400,
                    ),
                  );
                }),
                Obx(() {
                  final selectedLokerDescription = carilokercontroller
                      .locationDescription[dropdownValue ?? ''];
                  return Text(
                    selectedLokerDescription ?? '',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.transparent,
                      fontWeight: FontWeight.w400,
                    ),
                  );
                }),
              ],
            ),
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
                const SizedBox(width: 78),
                const Text(
                  'Lokasi Loker',
                  style: TextStyle(
                    fontSize: 23,
                    color: ColorPath.textcolor1,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(top: 45),
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 740,
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
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 278,
                          height: 410,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 238, 249, 250),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            image: selectedLokerImage.isNotEmpty
                                ? DecorationImage(
                                    image: NetworkImage(carilokercontroller
                                            .locationImages[dropdownValue!] ??
                                        ''),
                                    fit: BoxFit.cover,
                                  )
                                : const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/emptycategoryscreen.png'),
                                    fit: BoxFit.contain,
                                  ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Obx(() {
                          final selectedLokerCategory =
                              carilokercontroller.locationList.firstWhere(
                            (category) => category == dropdownValue,
                            orElse: () => '',
                          );

                          return Align(
                            alignment: const AlignmentDirectional(0.05, -0.82),
                            child: Container(
                              width: 280,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: DropdownButtonFormField<String>(
                                value: dropdownValue,
                                items: carilokercontroller.locationList
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                    selectedLokerImage = carilokercontroller
                                            .locationImages[newValue!] ??
                                        '';
                                  });
                                },
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 10),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: 'Pilih Daerah',
                                ),
                              ),
                            ),
                          );
                        }),
                        const SizedBox(height: 50),
                        AllButton(
                          onTap: () {
                            final selectedLokerAddress = carilokercontroller
                                .locationAddresses[dropdownValue ?? ''];
                            final selectedLokerDescription = carilokercontroller
                                .locationDescription[dropdownValue ?? ''];
                            addSelectedLoker(
                              selectedLokerImage,
                              selectedLokerAddress ?? '',
                              selectedLokerDescription ?? '',
                            );
                            if (dropdownValue!=null){
                              Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const DeskripsiLoker(),
                              ),
                            );
                            } else {
                              Get.snackbar(
                                'Whoops', 
                                'Choose A Location Before Continue To The Next Page',
                                backgroundColor: Colors.black,
                                colorText: Colors.white);
                            }
                          },
                          text: 'Lanjut',
                          backgroundColor: ColorPath.background,
                          textColor: ColorPath.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
