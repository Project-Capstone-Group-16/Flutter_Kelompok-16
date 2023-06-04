import 'package:capstone/components/all_button.dart';
import 'package:capstone/components/color_path.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final imgList = [
    'assets/images/malang.png',
    'assets/images/semarang.png',
    'assets/images/surabaya.png',
    'assets/images/bandung.png',
    'assets/images/jakarta.png',
  ];

  double height = 50;
  double width = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('id', null);
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorPath.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: Row(
                children: [
                  Text(
                    DateFormat.yMMMMEEEEd('id').format(DateTime.now()),
                    style: const TextStyle(
                      color: ColorPath.textcolor1,
                      fontFamily: 'Poppins',
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(end: 78),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/notification.png',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 55, 0, 0),
              child: const Text(
                'Beranda',
                style: TextStyle(
                  color: ColorPath.textcolor1,
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(15, 100, 15, 0),
              width: 358,
              height: 370,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    12,
                  ),
                ),
                color: ColorPath.textcolor1,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(25, 30, 0, 0),
                          ),
                          Image.asset(
                            'assets/images/loker.png',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 25, 5, 0),
                            child: Container(
                              width: 159,
                              height: 135,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorPath.white,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    20,
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      'kapasitas Loker',
                                      style: TextStyle(
                                        color: ColorPath.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                    child: CircularPercentIndicator(
                                      animation: true,
                                      animationDuration: 1000,
                                      lineWidth: 14,
                                      progressColor: ColorPath.white,
                                      percent: 0.75,
                                      radius: 40,
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      backgroundColor:
                                          Color.fromARGB(105, 195, 185, 185),
                                      center: const Text(
                                        '75%',
                                        style: TextStyle(
                                          color: ColorPath.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
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
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 20, 5, 0),
                            child: Container(
                              width: 90,
                              height: 110,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorPath.white,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    20,
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 10,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Jenis Loker',
                                      style: TextStyle(
                                        color: ColorPath.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 2,
                                        vertical: 20,
                                      ),
                                      child: Text(
                                        'Kecil (S1)',
                                        style: TextStyle(
                                          color: ColorPath.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                        child: Container(
                          width: 90,
                          height: 110,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorPath.white,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                20,
                              ),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 10,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Estimasi',
                                  style: TextStyle(
                                    color: ColorPath.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 15,
                                  ),
                                  child: Text(
                                    '19 - 21 April',
                                    style: TextStyle(
                                      color: ColorPath.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                        child: Container(
                          width: 135,
                          height: 110,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorPath.white,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                20,
                              ),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 23,
                              vertical: 10,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Ukuran Barang',
                                  style: TextStyle(
                                    color: ColorPath.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 15,
                                  ),
                                  child: Text(
                                    '15 x 20 x 24 cm',
                                    style: TextStyle(
                                      color: ColorPath.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: ColorPath.textcolor1,
                    ),
                    label: const Text(
                      'Tambah Barang',
                      style: TextStyle(
                          color: ColorPath.textcolor1,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 40,
                      ),
                      backgroundColor: ColorPath.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(20, 500, 20, 0),
              width: 358,
              height: 45,
              decoration: BoxDecoration(
                color: ColorPath.background2,
                border: Border.all(
                  width: 1.5,
                  color: const Color.fromARGB(233, 195, 185, 185),
                ),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Loker Tersedia',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: ColorPath.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 570, 0, 0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 172,
                  viewportFraction: 0.6,
                  pageSnapping: true,
                  enableInfiniteScroll: true,
                  onPageChanged: (int index, CarouselPageChangedReason reason) {
                    setState(() {
                      this.index = index;
                    });
                  },
                ),
                items: imgList.map((String item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: 197,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            width: 1.5,
                            color: const Color.fromARGB(233, 195, 185, 185),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              6,
                            ),
                          ),
                        ),
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: 1000,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
