import 'package:capstone/components/color_path.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AalamatPengguna extends StatefulWidget {
  const AalamatPengguna({super.key});

  @override
  State<AalamatPengguna> createState() => _AalamatPenggunaState();
}

class _AalamatPenggunaState extends State<AalamatPengguna> {
  GoogleMapController? mapController;

  final LatLng _center = const LatLng(-6.2088, 106.8456);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

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
                          'Alamat Pengguna',
                          style: TextStyle(
                            color: ColorPath.textcolor1,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
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
                  height: 500,
                  decoration: BoxDecoration(
                    color: ColorPath.background2,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 30,
                        left: 30,
                        child: Text(
                          'Alamat',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorPath.background,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 60, // Sesuaikan posisi vertikal
                        left: 20, // Sesuaikan posisi horizontal
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Container(
                            width: 340,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Masukkan Lokasi',
                                  hintStyle: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: ColorPath.hinttext,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  prefixIcon: Icon(
                                    Icons.place,
                                    color: Color(0xFF02B3FF),
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.0, 0.88),
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            color: ColorPath.AppbarProfile,
                            borderRadius: BorderRadius.circular(15),
                            shape: BoxShape.rectangle,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'Simpan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorPath.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
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
