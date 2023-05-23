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
              icon: Icon(
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
                margin: EdgeInsets.only(
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
            height: height * 0.15,
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.30),
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
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Buat Kata Sandi Baru Anda',
                    style: TextStyle(
                      fontSize: 32,
                      color: ColorPath.textcolor1,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 149,
                        height: 149,
                        decoration: BoxDecoration(
                          color: Color(0xFF2D9CDB),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Image.asset(
                        'assets/images/Lock.png',
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Masukkan Email Terdaftar',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: ColorPath.background,
                      )),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Tindakan saat tombol "Lanjut" ditekan
                        String email = _emailController.text;
                        // Lakukan sesuatu dengan alamat email yang diberikan
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Lanjut',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
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
