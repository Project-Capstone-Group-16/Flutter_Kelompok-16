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
      'name': 'Indonesia',
      'flag': 'assets/images/indonesia.png',
    },
    {
      'name': 'English (US)',
      'flag': 'assets/images/amerika.png',
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text('Bahasa'),
        titleTextStyle: const TextStyle(
          fontSize: 23,
          color: ColorPath.textcolor1,
          fontWeight: FontWeight.w600,
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              ),
             ),
      ),
      
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
              padding: const EdgeInsets.only(top: 15),
              itemCount: languages.length,
              itemBuilder: (context, index) {
                final language = languages[index];

                return RadioListTile<int>(
                  value: index,
                  groupValue: selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      selectedLanguage = index;
                    });
                  },
                  title: Row(
                    children: [
                      Image.asset(
                        language['flag'],
                        width: 45,
                        height: 29,
                      ),
                      const SizedBox(width: 40),
                      Text(
                        language['name'],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
