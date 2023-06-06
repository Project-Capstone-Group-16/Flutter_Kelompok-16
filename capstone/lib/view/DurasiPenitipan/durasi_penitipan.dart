import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../components/color_path.dart';

class DurasiPenitipan extends StatefulWidget {
  const DurasiPenitipan({super.key});

  @override
  State<DurasiPenitipan> createState() => _DurasiPenitipanState();
}

class _DurasiPenitipanState extends State<DurasiPenitipan> {
  final Color elevatedButtonColor = ColorPath.background;

  DateTime today = DateTime.now();

  void _ondaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  List<DateTime> selectedDates = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEF9F7),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 75, // Tinggi AppBar
              color: Colors.transparent, // Warna AppBar
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    color: ColorPath.textcolor1,
                    onPressed: () {
                      // Aksi ketika tombol kembali ditekan
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'Durasi Penitipan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorPath.textcolor1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: Column(
                children: [
                  const Text(
                    'Memilih Durasi Penitipan',
                    style: TextStyle(
                        color: ColorPath.textcolor1,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 358,
                    height: 360,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorPath.background),
                      borderRadius: BorderRadius.circular(18),
                      color: ColorPath.background,
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.grey.withOpacity(0.3),
                      //       spreadRadius: 3,
                      //       blurRadius: 3,
                      //       offset: const Offset(0, 4)),
                      // ],
                    ),
                    child: Stack(
                      children: [
                        // Calendar
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: TableCalendar(
                              rowHeight: 43,
                              daysOfWeekVisible: true,
                              weekNumbersVisible: false,
                              daysOfWeekStyle: const DaysOfWeekStyle(

                                  // Tulisan hari sun belum bisa ke warna putih
                                  weekdayStyle: TextStyle(color: Colors.white)),
                              availableCalendarFormats: const {
                                CalendarFormat.month: '',
                                // CalendarFormat.week: '',
                              },
                              weekendDays: const [
                                DateTime.sunday,
                              ],
                              startingDayOfWeek: StartingDayOfWeek.monday,
                              // headerVisible: false,
                              headerStyle: const HeaderStyle(
                                leftChevronIcon: Icon(
                                  Icons.chevron_left_rounded,
                                  color: ColorPath.primary,
                                ),
                                rightChevronIcon: Icon(
                                  Icons.chevron_right_rounded,
                                  color: ColorPath.primary,
                                ),
                                titleCentered: true,
                                titleTextStyle: TextStyle(
                                  color: ColorPath.primary,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              calendarStyle: const CalendarStyle(
                                cellMargin: EdgeInsets.all(5),
                                isTodayHighlighted: true,
                                defaultTextStyle:
                                    TextStyle(color: ColorPath.primary),
                                weekendTextStyle:
                                    TextStyle(color: ColorPath.primary),
                                weekNumberTextStyle:
                                    TextStyle(color: ColorPath.primary),
                                todayDecoration: BoxDecoration(
                                  color: ColorPath.primary,
                                  shape: BoxShape.circle,
                                ),
                                outsideDaysVisible: true,
                                todayTextStyle:
                                    TextStyle(color: ColorPath.black),
                                selectedDecoration: BoxDecoration(
                                  color: ColorPath.primary,
                                  shape: BoxShape.circle,
                                ),
                                selectedTextStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              selectedDayPredicate: (day) =>
                                  selectedDates.contains(day),
                              focusedDay: DateTime.now(),
                              onDaySelected: (selectedDay, focusedDay) {
                                setState(() {
                                  if (selectedDates.contains(selectedDay)) {
                                    selectedDates.remove(selectedDay);
                                  } else {
                                    selectedDates.add(selectedDay);
                                  }
                                });
                                _ondaySelected(selectedDay, focusedDay);
                              },
                              firstDay: DateTime.utc(2000, 01, 01),
                              lastDay: DateTime.utc(2050, 01, 01),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 90),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: SizedBox(
                        width: 150.0,
                        height: 40.0,
                        //  ElevatedButton 'Lanjut'
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              elevatedButtonColor,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Lanjut',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}