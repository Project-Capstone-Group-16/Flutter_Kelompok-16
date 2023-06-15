import 'package:capstone/components/all_button.dart';
import 'package:capstone/view/cariLoker/deskripsi_loker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:capstone/model/controller/lokasi_loker_response.dart';

import '../../components/color_path.dart';

class CariLoker extends StatefulWidget {
  const CariLoker({Key? key}) : super(key: key);

  @override
  State<CariLoker> createState() => _CariLokerState();
}

class _CariLokerState extends State<CariLoker> {
  String? dropdownValue;
  List<String> locationList = [];
  Map<String, String> locationImages = {};

  String selectedLokerImage = '';

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://my-json-server.typicode.com/alfianadis/mockapi/db'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<Lokasi> locations =
            List<Lokasi>.from(data['Lokasi'].map((x) => Lokasi.fromJson(x)));
        locations.forEach((x) => locationList.add(x.lokasiLoker));
        locations.forEach((x) => locationImages[x.lokasiLoker] = x.image);
//
        setState(() {
          locationList = locationList;

          locationImages = locationImages;
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
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
                                    image: NetworkImage(selectedLokerImage),
                                    fit: BoxFit.cover)
                                : const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/emptycategoryscreen.png'),
                                    fit: BoxFit.contain),
                          ),
                        ),
                        const SizedBox(height: 50),
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
                              items: locationList.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                  selectedLokerImage =
                                      locationImages[newValue!] ?? '';
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
                        ),
                        const SizedBox(height: 50),
                        AllButton(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DeskripsiLoker(),
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
        ),
      ),
    );
  }
}
