import 'package:flutter/material.dart';

import '../../components/color_path.dart';

class Pilih_bahasa extends StatefulWidget {
  const Pilih_bahasa({super.key});

  @override
  State<Pilih_bahasa> createState() => _Pilih_bahasaState();
}

class _Pilih_bahasaState extends State<Pilih_bahasa> {
  int selectedLanguage = 0;

  List<Map<String, dynamic>> languages = [
    {
      'name': 'English (US)',
      'flag': 'assets/images/amerika.png',
    },
    {
      'name': 'Indonesia',
      'flag': 'assets/images/indonesia.png',
    },
    {
      'name': 'English (UK)',
      'flag': 'assets/images/english.png',
    },
    {
      'name': 'Japanese',
      'flag': 'assets/images/jepang.png',
    },
    {
      'name': 'Hindi',
      'flag': 'assets/images/india.png',
    },
    {
      'name': 'Spanish',
      'flag': 'assets/images/spain.png',
    },
    {
      'name': 'Deutsch',
      'flag': 'assets/images/jerman.png',
    },
    {
      'name': 'Italian',
      'flag': 'assets/images/italia.png',
    },
    {
      'name': 'French',
      'flag': 'assets/images/prancis.png',
    },
    {
      'name': 'Russian',
      'flag': 'assets/images/rusia.png',
    },
    // Add more languages here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.background2,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, -0.96),
              child: Text(
                'Bahasa',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: ColorPath.background,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.9, -0.99),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                ),
                color: Colors.black,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (int i = 0; i < languages.length; i++)
                    RadioListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Mengatur posisi tombol di sebelah kanan
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                languages[i]['flag'],
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 10),
                              Text(
                                languages[i]['name'],
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Radio<int>(
                            value: i,
                            groupValue: selectedLanguage,
                            onChanged: (value) {
                              setState(() {
                                selectedLanguage = i;
                              });
                            },
                          ),
                        ],
                      ),
                      value: i,
                      groupValue: selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          selectedLanguage = i;
                        });
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
