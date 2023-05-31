import 'package:capstone/components/color_path.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  double height = 50;
  double width = 0;
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
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: Row(
                children: [
                  Text(
                    DateFormat.yMMMMEEEEd('id').format(DateTime.now()),
                    style: const TextStyle(
                        color: ColorPath.textcolor1,
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(end: 100),
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
              margin: const EdgeInsets.fromLTRB(15, 100, 15, 0),
              width: 358,
              height: 273,
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 35),
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
            )
          ],
        ),
      ),
    );
  }
}
