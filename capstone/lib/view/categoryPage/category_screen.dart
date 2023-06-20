import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:capstone/model/controller/category_controller.dart';
import 'package:capstone/model/controller/dropdownvalue_controller.dart';
import 'package:capstone/components/color_path.dart';
import 'package:capstone/components/all_button.dart';
import 'package:capstone/screen.dart';

import 'package:get/get.dart';

class CategoryBarangScreen extends StatefulWidget {
  const CategoryBarangScreen({super.key});

  @override
  State<CategoryBarangScreen> createState() => _CategoryBarangScreenState();
}

class _CategoryBarangScreenState extends State<CategoryBarangScreen> {
  bool isContainer1Active = false;
  bool isContainer2Active = false;
  bool isContainer3Active = false;
  bool isContainer4Active = false;

  CategoryController categoryController = Get.find<CategoryController>();

  String selectedCategoryImage = '';
  String selectedCategory = '';
  String? dropdownValue;
  List<String> kategoriList = [];
  RxMap<String, String> kategoriKapasitas = <String, String>{}.obs;
  RxMap<String, String> kategoriNama = <String, String>{}.obs;
  RxMap<String, String> kategoriHarga = <String, String>{}.obs;

  Future<List<String>> fetchKategoriList() async {
    final url = 'http://143.198.92.250:8080/lockertypes';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final lockerTypes = data['data'] as List<dynamic>;
      final kategoriList =
          lockerTypes.map((type) => type['name'] as String).toList();
      return kategoriList;
    } else {
      throw Exception('Failed to fetch kategori list');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchKategoriList().then((list) {
      setState(() {
        kategoriList = list;
      });
    }).catchError((error) {
      print('Error fetching kategori list: $error');
    });
  }

  void addCategoryPic(String selectedimage) {
    final _categoryController = Get.find<CategoryController>();
    _categoryController.addCategoryPic(selectedimage);
  }

    void addSelectedLokerKapasitas(String dropdownValue){
    final _selectedLokerKapasitas=Get.find<SelectedLokerKapasitas>();
    _selectedLokerKapasitas.addSelectedLokerKapasitas(dropdownValue);
  }

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
              const SizedBox(width: 55),
              const Text(
                'Kategori Barang',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isContainer1Active = !isContainer1Active;
                                isContainer2Active = false;
                                isContainer3Active = false;
                                isContainer4Active = false;
                                if (isContainer1Active) {
                                  selectedCategoryImage =
                                      'assets/images/gambartas.jpg';
                                }
                              });
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: isContainer1Active
                                      ? const Color.fromARGB(255, 53, 59, 222)
                                      : const Color.fromARGB(
                                          255, 216, 216, 216),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                              child: Image.asset('assets/images/tas.png'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isContainer2Active = !isContainer2Active;
                                isContainer1Active = false;
                                isContainer3Active = false;
                                isContainer4Active = false;
                                if (isContainer2Active) {
                                  selectedCategoryImage =
                                      'assets/images/gambarsepatu.jpg';
                                }
                              });
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: isContainer2Active
                                      ? const Color.fromARGB(255, 53, 59, 222)
                                      : const Color.fromARGB(
                                          255, 216, 216, 216),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                              child: Image.asset('assets/images/sepatu.png'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isContainer3Active = !isContainer3Active;
                                isContainer1Active = false;
                                isContainer2Active = false;
                                isContainer4Active = false;
                                if (isContainer3Active) {
                                  selectedCategoryImage =
                                      'assets/images/gambarbaju.jpg';
                                }
                              });
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: isContainer3Active
                                      ? const Color.fromARGB(255, 53, 59, 222)
                                      : const Color.fromARGB(
                                          255, 216, 216, 216),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                              child: Image.asset('assets/images/baju.png'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isContainer4Active = !isContainer4Active;
                                isContainer1Active = false;
                                isContainer2Active = false;
                                isContainer3Active = false;
                                if (isContainer4Active) {
                                  selectedCategoryImage =
                                      'assets/images/gambarkotak.jpg';
                                }
                              });
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: isContainer4Active
                                      ? const Color.fromARGB(255, 53, 59, 222)
                                      : const Color.fromARGB(
                                          255, 216, 216, 216),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                              child: Image.asset('assets/images/box.png'),
                            ),
                          ),
                        ],
                      ),
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
                            image: selectedCategoryImage.isNotEmpty
                                ? DecorationImage(
                                    image: AssetImage(selectedCategoryImage),
                                    fit: BoxFit.cover)
                                : const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/emptycategoryscreen.png'),
                                    fit: BoxFit.contain)),
                      ),
                      const SizedBox(height: 20),
                      Align(
                          alignment: const AlignmentDirectional(0.05, -0.82),
                          child: Container(
                            width: 280,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DropdownButtonFormField<String>(
                              value: dropdownValue,
                              items: kategoriList.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                  selectedCategory = newValue ?? '';
                                });
                              },
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 10),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'Jenis Loker',
                              ),
                            ),
                          )),
                      const SizedBox(height: 70),
                      AllButton(
                        onTap: () {
                          addSelectedLokerKapasitas(dropdownValue??'');
                          addCategoryPic(selectedCategoryImage);
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CariLoker(),
                          ));
                        },
                        text: 'Lanjut',
                        backgroundColor: ColorPath.background,
                        textColor: ColorPath.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
