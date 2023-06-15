import 'package:capstone/components/all_button.dart';
import 'package:flutter/material.dart';
import '../../components/color_path.dart';

class DeskripsiLoker extends StatefulWidget {
  const DeskripsiLoker({super.key});

  @override
  State<DeskripsiLoker> createState() => _DeskripsiLokerState();
}

class _DeskripsiLokerState extends State<DeskripsiLoker> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Text(
                  'Loker',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorPath.background,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/malangloker.png',
                          height: 321,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          size: 24,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.grey, // Atur warna divider sesuai kebutuhan
                  thickness: 1, // Atur ketebalan divider sesuai kebutuhan
                  indent: 20, // Atur jarak inden dari sebelah kiri
                  endIndent: 20, // Atur jarak inden dari sebelah kanan
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Alamat',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Jl Ankara No 13, Cieumbeulit Wonokromo, Probolinggo Jawa Timur 124599',
                    style: TextStyle(
                      fontSize: 10,
                      color: ColorPath.alamat,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.grey, // Atur warna divider sesuai kebutuhan
                  thickness: 1, // Atur ketebalan divider sesuai kebutuhan
                  indent: 20, // Atur jarak inden dari sebelah kiri
                  endIndent: 20, // Atur jarak inden dari sebelah kanan
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.grey, // Atur warna divider sesuai kebutuhan
                  thickness: 1, // Atur ketebalan divider sesuai kebutuhan
                  indent: 20, // Atur jarak inden dari sebelah kiri
                  endIndent: 20, // Atur jarak inden dari sebelah kanan
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Deskripsi ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Jl Ankara No 13, Cieumbeulit Wonokromo, Probolinggo Jawa Timur 124599',
                    style: TextStyle(
                      fontSize: 10,
                      color: ColorPath.alamat,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.grey, // Atur warna divider sesuai kebutuhan
                  thickness: 1, // Atur ketebalan divider sesuai kebutuhan
                  indent: 20, // Atur jarak inden dari sebelah kiri
                  endIndent: 20, // Atur jarak inden dari sebelah kanan
                ),
              ],
            ),
            Positioned(
                bottom: 100,
                left: 100,
                child: AllButton(
                    onTap: () {},
                    text: 'Lanjut',
                    backgroundColor: ColorPath.background,
                    textColor: ColorPath.white)),
            Positioned(
              top: 10,
              left: 16,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                ),
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
