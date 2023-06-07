import 'package:flutter/material.dart';

import '../../components/color_path.dart';

class Faq_Page extends StatefulWidget {
  const Faq_Page({super.key});

  @override
  State<Faq_Page> createState() => _Faq_PageState();
}

class _Faq_PageState extends State<Faq_Page> {
  final List<FaqItem> faqs = [
    FaqItem(
      question: 'Apa itu Inventron?',
      answer:
          'PT. Inventron atau Inventory Now merupakan suatu perusahaan yang bergerak di bidang penyimpanan barang yang berkaitan dengan pengelolaan barang maupun penitipan barang. PT. Inventron ingin membantu pengguna untuk memiliki tempat penyimpanan barang yang aman dan terpercaya.',
    ),
    FaqItem(
      question: 'Di daerah mana saja Inventron hadir?',
      answer:
          'Inventron sudah tersedia  di Jabodetabek, Bandung, Solo, Semarang ,Surabaya dan Malang.  Dan pengembangan Inventron sendiri akan segera meluncur ke berbagai penjuru wilayah Nusantara.',
    ),
    FaqItem(
      question: 'Siapa saja yang bisa menggunakan jasa Inventron?',
      answer:
          'Inventron bisa digunakan untuk semua kalangan pengguna tanpa batasan apapun',
    ),
    FaqItem(
      question: 'Barang apa saja yang dapat dititipkan di Inventron?',
      answer:
          'Barang yang bisa dititipkan ke dalam inventron yaitu barang barang yang sering digunakan anak anak kos seperti rice cooker, kompor, gas dll.',
    ),
    // Tambahkan faqItem
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
                'Pertanyaan Umum',
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 65, horizontal: 16),
              child: ListView.builder(
                itemCount: faqs.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    child: ExpansionTile(
                      title: Text(
                        faqs[index].question,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            faqs[index].answer,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FaqItem {
  final String question;
  final String answer;

  FaqItem({required this.question, required this.answer});
}
