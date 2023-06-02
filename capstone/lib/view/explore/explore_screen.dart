import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:capstone/components/color_path.dart';
import 'package:capstone/screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      DateFormat.yMMMMEEEEd('id').format(DateTime.now()),
                      style: const TextStyle(
                          color: ColorPath.textcolor1,
                          fontFamily: 'Poppins',
                          fontSize: 23,
                          fontWeight: FontWeight.w700),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.only(end: 85),
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
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(15, 50, 15, 0),
                width: 358,
                height: 270,
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(25, 25, 0, 0),
                              child: Text(
                                'Simpan Barang',
                                style: TextStyle(
                                    color: ColorPath.primary,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 25, 30, 0),
                              child: Text(
                                'Pengeluaran',
                                style: TextStyle(
                                    color: ColorPath.primary,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(69, 10, 0, 0),
                              child: Text(
                                '0',
                                style: TextStyle(
                                    color: ColorPath.primary,
                                    fontFamily: 'Poppins',
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 60, 0),
                              child: Text(
                                '0',
                                style: TextStyle(
                                    color: ColorPath.primary,
                                    fontFamily: 'Poppins',
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 35),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Yuk Tambah Barangmu Sekarang!',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ColorPath.primary),
                          ),
                          LinearPercentIndicator(
                            lineHeight: 22,
                            width: 287,
                            percent: 0.2,
                            animation: true,
                            animationDuration: 1000,
                            center: const Text(
                              "20.0%",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ColorPath.primary,
                              ),
                            ),
                            barRadius: const Radius.circular(12),
                            backgroundColor: ColorPath.black,
                            progressColor:
                                const Color.fromARGB(255, 58, 144, 215),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          const Text(
                            'Kapasitas Penyimpanan',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ColorPath.primary),
                          ),
                          LinearPercentIndicator(
                            lineHeight: 22,
                            width: 287,
                            percent: 0.6,
                            animation: true,
                            animationDuration: 1000,
                            center: const Text(
                              "60.0%",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ColorPath.primary,
                              ),
                            ),
                            barRadius: const Radius.circular(12),
                            backgroundColor: ColorPath.black,
                            progressColor:
                                const Color.fromARGB(255, 58, 144, 215),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(45, 330, 45, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              12,
                            ),
                          ),
                          child: Material(
                            child: InkWell(
                              splashColor: ColorPath.background,
                              onTap: () {
                                Navigator.of(context).push(
                                MaterialPageRoute(
                                builder: (context) => const CategoryBarangScreen(),
                              ));
                              },
                              child: Ink(
                                width: 75,
                                height: 79,
                                decoration: BoxDecoration(
                                  color: ColorPath.background2,
                                  border: Border.all(
                                      width: 1.5,
                                      color:
                                          Color.fromARGB(233, 195, 185, 185)),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      12,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/category.png',
                                      width: 50,
                                    ),
                                    const Text(
                                      'Kategori',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: ColorPath.textcolor1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              12,
                            ),
                          ),
                          child: Material(
                            child: InkWell(
                              splashColor: ColorPath.background,
                              onTap: () {
                                Navigator.of(context).push(
                                MaterialPageRoute(
                                builder: (context) => const EstimasiBiayaScreen(),
                              ));
                              },
                              child: Ink(
                                width: 75,
                                height: 79,
                                decoration: BoxDecoration(
                                  color: ColorPath.background2,
                                  border: Border.all(
                                      width: 1.5,
                                      color:
                                          Color.fromARGB(233, 195, 185, 185)),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      12,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/estimated.png',
                                      width: 60,
                                    ),
                                    const Text(
                                      'Estimasi',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: ColorPath.textcolor1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              12,
                            ),
                          ),
                          child: Material(
                            child: InkWell(
                              splashColor: ColorPath.background,
                              onTap: () {},
                              child: Ink(
                                width: 75,
                                height: 79,
                                decoration: BoxDecoration(
                                  color: ColorPath.background2,
                                  border: Border.all(
                                    width: 1.5,
                                    color: const Color.fromARGB(
                                        233, 195, 185, 185),
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      12,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/promo.png',
                                      width: 50,
                                    ),
                                    const Text(
                                      'Promo',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: ColorPath.textcolor1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(20, 420, 20, 0),
                width: 358,
                height: 169,
                decoration: BoxDecoration(
                  color: ColorPath.background2,
                  border: Border.all(
                    width: 1.5,
                    color: const Color.fromARGB(233, 195, 185, 185),
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      12,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 17, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/task.png',
                          ),
                          const Text(
                            ' Simpan Penyimpanan Anda Disini',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: ColorPath.black),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/tambahBarang.png',
                            width: 235,
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                8,
                              ),
                            ),
                            child: Material(
                              child: InkWell(
                                splashColor: ColorPath.textcolor1,
                                onTap: () {},
                                child: Ink(
                                  width: 75,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    color: ColorPath.background,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        8,
                                      ),
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Tambah',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                            color: ColorPath.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(20, 595, 20, 0),
                width: 358,
                height: 35,
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
                padding: const EdgeInsets.fromLTRB(0, 650, 0, 0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 165,
                    viewportFraction: 0.5,
                    pageSnapping: true,
                    enableInfiniteScroll: false,
                    onPageChanged:
                        (int index, CarouselPageChangedReason reason) {
                      setState(() {
                        this.index = index;
                      });
                    },
                  ),
                  items: imgList.map((String item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: 175,
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                15,
                              ),
                            ),
                            color: ColorPath.textcolor1,
                          ),
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
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
      ),
    );
  }
}
