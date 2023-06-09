import 'package:capstone/screen.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../components/color_path.dart';

import 'package:capstone/components/all_button.dart';

class DurasiPenitipan extends StatefulWidget {
  const DurasiPenitipan({super.key});

  @override
  State<DurasiPenitipan> createState() => _DurasiPenitipanState();
}

class _DurasiPenitipanState extends State<DurasiPenitipan> {
  final Color elevatedButtonColor = ColorPath.background;

  DateTime today = DateTime.now();
  late DateTime selectedDate;
  List<DateTime> inBetweenDates = [];

  List<DateTime> getDatesInRange(DateTime start, DateTime end) {
    final List<DateTime> dates = [];
    DateTime date = DateTime(start.year, start.month, start.day + 1);
    while (date.isBefore(end)) {
      dates.add(date);
      date = date.add(const Duration(days: 1));
    }
    return dates;
  }

  void _ondaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      if (selectedDates.isNotEmpty) {
        // Menghapus semua tanggal yang sudah dipilih sebelumnya
        selectedDates.clear();
        inBetweenDates.clear();
      }
      selectedDate = day;
      inBetweenDates = getDatesInRange(today, selectedDate);
    });
  }

  List<DateTime> selectedDates = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEF9F7),
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // height: 10, // Tinggi AppBar
                color: Colors.transparent, // Warna AppBar
                child: Row(
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
              const SizedBox(width: 52),
              const Text(
                'Durasi Penitipan',
                style: TextStyle(
                  fontSize: 23,
                  color: ColorPath.textcolor1,
                  fontWeight: FontWeight.w600,
                ),
              )
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
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: TableCalendar(
                                rowHeight: 43,
                                daysOfWeekVisible: true,
                                weekNumbersVisible: false,
                                daysOfWeekStyle: const DaysOfWeekStyle(
                                    // Tulisan hari sun belum bisa ke warna putih
                                    weekendStyle:
                                        TextStyle(color: ColorPath.primary),
                                    weekdayStyle:
                                        TextStyle(color: ColorPath.primary)),
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
                                selectedDayPredicate: (day) {
                                  final DateTime selectedDay =
                                      DateTime(day.year, day.month, day.day);
                                  return selectedDates.contains(day) ||
                                      inBetweenDates.contains(selectedDay);
                                },

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
                   AllButton(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const RingkasanPemesananPage(),
                          ));
                        },
                        text: 'Lanjut',
                        backgroundColor: ColorPath.background,
                        textColor: ColorPath.white,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
