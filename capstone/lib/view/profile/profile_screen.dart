import 'package:capstone/components/color_path.dart';
import 'package:capstone/screen.dart';
import 'package:capstone/view/profile/halaman_faq.dart';
import 'profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.background2,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(-1, -1),
              child: Container(
                width: 448,
                height: 120,
                decoration: const BoxDecoration(
                  color: ColorPath.AppbarProfile,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.89),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.9, -0.92),
                    child: Text(
                      'Profil',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: ColorPath.background2,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.6, -0.91),
                    child: Container(
                      width: 35,
                      height: 35,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/73/600',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.9, -0.93),
                    child: IconButton(
                      onPressed: () {
                        Get.defaultDialog(
                          title: "Keluar?",
                          titleStyle: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                          content: Container(
                            child: Text(
                              'Aoakah Anda yakin ingin keluar?',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          textConfirm: "Keluar",
                          textCancel: "Tidak",
                          confirmTextColor: Colors.white,
                          contentPadding: EdgeInsets.all(25),
                          onConfirm: () {
                            Get.offAll(LoginPage());
                          },
                        );
                      },
                      icon: Icon(
                        Icons.logout,
                        color: ColorPath.background2,
                        size: 30,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.78, -0.58),
                    child: Text(
                      'Pengaturan',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorPath.background,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.10),
                    child: Container(
                      width: 331,
                      height: 281,
                      decoration: BoxDecoration(
                        color: ColorPath.background2,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color(0xFFB3B3B3),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.94, -0.9),
                            child: Icon(
                              Icons.settings_outlined,
                              color: ColorPath.background,
                              size: 22,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.74, -0.88),
                            child: Text(
                              'Umum',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: ColorPath.background,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.87, -0.60),
                            child: Text(
                              'Biodata',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.90, -0.70),
                            child: IconButton(
                              icon: Icon(
                                Icons.navigate_next,
                                color: Colors.black,
                                size: 24,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BiodataPage()));
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.87, -0.30),
                            child: Text(
                              'Histori',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.90, -0.36),
                            child: IconButton(
                              icon: Icon(
                                Icons.navigate_next,
                                color: Colors.black,
                                size: 24,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Histori_Pesanan()));
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.87, 0),
                            child: Text(
                              'Favorit',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.90, 0),
                            child: IconButton(
                              icon: Icon(
                                Icons.navigate_next,
                                color: Colors.black,
                                size: 24,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Favorit_Loker()));
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.87, 0.30),
                            child: Text(
                              'Bahasa',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.90, 0.36),
                            child: IconButton(
                              icon: Icon(
                                Icons.navigate_next,
                                color: Colors.black,
                                size: 24,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Pilih_bahasa()));
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.87, 0.66),
                            child: Text(
                              'Pemberitahuan',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.87, 0.66),
                            child: Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0)),
                              child: Switch.adaptive(
                                value: switchValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    switchValue = newValue;
                                  });
                                },
                                activeColor: ColorPath.white,
                                activeTrackColor: Color(0xFF14D63F),
                                inactiveTrackColor: ColorPath.background2,
                                inactiveThumbColor: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.80),
              child: Container(
                width: 331,
                height: 110,
                decoration: BoxDecoration(
                  color: ColorPath.background2,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color(0xFFB3B3B3),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.94, -0.58),
                      child: Icon(
                        Icons.info_outlined,
                        color: ColorPath.background,
                        size: 22,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.74, -0.55),
                      child: Text(
                        'Bantuan',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: ColorPath.background,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.87, 0.20),
                      child: Text(
                        'Pertanyaan Umum',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.90, 0.26),
                      child: IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                          size: 24,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Faq_Page()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
