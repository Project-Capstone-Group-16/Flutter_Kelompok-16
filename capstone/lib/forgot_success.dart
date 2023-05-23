import 'package:capstone/components/color_path.dart';
import 'package:flutter/material.dart';

class ForgotSuccess extends StatefulWidget {
  const ForgotSuccess({super.key});

  @override
  State<ForgotSuccess> createState() => _ForgotSuccessState();
}

class _ForgotSuccessState extends State<ForgotSuccess> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorPath.background,
      body: Stack(
        children: [
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment:
                    Alignment.center, // Mengatur posisi gambar dengan angka
                margin: const EdgeInsets.only(
                    bottom: 400), // Mengatur margin bawah (opsional)
                child: Image.asset(
                  'assets/images/homelogo.png',
                  width: 200, // Sesuaikan dengan ukuran yang diinginkan
                  height: 200, // Sesuaikan dengan ukuran yang diinginkan
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.20),
            height: height * 0.85,
            decoration: const BoxDecoration(
              color: ColorPath.primary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 149,
                        height: 149,
                      ),
                      Image.asset(
                        'assets/images/ceklis.png',
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Mengatur Ulang    Kata Sandi Berhasil!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: ColorPath.background,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Mengatur ulang kata sandimu berhasil, Silahkan masuk kembali.',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: ColorPath.background,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 10),
                    decoration: BoxDecoration(
                      color: ColorPath.background,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Text(
                      'Selesai',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
