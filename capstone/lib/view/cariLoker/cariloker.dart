import 'package:capstone/components/all_button.dart';
import 'package:flutter/material.dart';

import '../../components/color_path.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CariLoker extends StatefulWidget {
  const CariLoker({super.key});

  @override
  State<CariLoker> createState() => _CariLokerState();
}

class _CariLokerState extends State<CariLoker> {
  GoogleMapController? mapController;

  final LatLng _center = const LatLng(-6.2088, 106.8456);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorPath.background2,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Card(
                elevation: 3,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 14.0,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.05, -0.82),
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButtonFormField<String>(
                    value: dropdownValue,
                    items: <String>[
                      'Malang',
                      'Semarang',
                      'Surabaya',
                      'Bandung',
                      'Jakarta'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Memilih Lokasi',
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1, -1),
                child: Container(
                  width: 448,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: ColorPath.background2,
                  ),
                  child: Stack(
                    children: [
                      const Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'Lokasi Loker',
                          style: TextStyle(
                            color: ColorPath.textcolor1,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        ),
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.99, 1.01),
                child: Container(
                  width: 424,
                  height: 180,
                  decoration: const BoxDecoration(
                    color: ColorPath.background2,
                  ),
                  child: Stack(
                    children: [
                      // Widget choice chip "Pickup"
                      Positioned(
                        top: 20, // Sesuaikan posisi vertikal
                        left: 40, // Sesuaikan posisi horizontal
                        child: ChoiceChip(
                          label: const Text('Self Service'),
                          selected: true,
                          selectedColor: const Color(0xFF1C49C3),
                          labelStyle: const TextStyle(color: Colors.white),
                          onSelected: (bool selected) {
                            // Ketika choice chip dipilih, tambahkan logika di sini
                          },
                        ),
                      ),
                      // Widget choice chip "Self Service"
                      Positioned(
                        top: 20, // Sesuaikan posisi vertikal
                        right: 40, // Sesuaikan posisi horizontal
                        child: ChoiceChip(
                          label: const Text('    Pick Up    '),
                          selected: false,
                          selectedColor: const Color(0xFF1C49C3),
                          labelStyle: const TextStyle(color: Colors.white),
                          onSelected: (bool selected) {
                            // Ketika choice chip dipilih, tambahkan logika di sini
                          },
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 40,
                          child: Center(
                            child: AllButton(
                                onTap: () {},
                                text: "Lanjut",
                                backgroundColor: ColorPath.background,
                                textColor: Colors.white),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
