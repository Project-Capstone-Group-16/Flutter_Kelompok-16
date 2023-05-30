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
              GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 14.0,
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
                    decoration: InputDecoration(
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
                alignment: AlignmentDirectional(-1, -1),
                child: Container(
                  width: 448,
                  height: 60,
                  decoration: BoxDecoration(
                    color: ColorPath.background2,
                  ),
                  child: Stack(
                    children: [
                      Align(
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
                          // Handle settings icon press
                        },
                        icon: Icon(
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
                alignment: AlignmentDirectional(-0.99, 1.01),
                child: Container(
                  width: 424,
                  height: 100,
                  decoration: BoxDecoration(
                    color: ColorPath.background2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
