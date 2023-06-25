import 'package:flutter/material.dart';

import 'package:capstone/view/forgotPasswordPage/otp_password.dart';
import 'package:capstone/components/color_path.dart';
import '../../components/all_button.dart';
import '../../components/email_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _focus = FocusNode();
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
    _focus.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    if (_focus.hasFocus) {
      setState(() {
        height = 20;
      });
    } else {
      setState(() {
        height = 100;
      });
    }
    debugPrint(height.toString());
  }

  double height = 50;
  double width = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.background,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 35,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                    top: 50,
                  ), // Mengatur posisi gambar dengan angka
                  // Mengatur margin bawah (opsional)
                  child: Image.asset(
                    'assets/images/homelogo.png',
                    width: 200, // Sesuaikan dengan ukuran yang diinginkan
                    height: 200, // Sesuaikan dengan ukuran yang diinginkan
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: height * 4.5),
              decoration: const BoxDecoration(
                color: ColorPath.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Expanded(
                child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Lupa Kata Sandi',
                        style: TextStyle(
                          fontSize: 32,
                          color: ColorPath.textcolor1,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(5.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 149,
                            height: 149,
                            decoration: const BoxDecoration(
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
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        'Masukkan Email Terdaftar',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: ColorPath.background,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    EmailTextField(
                      controller: emailController,
                      labelText: 'Email',
                      obscureText: false,
                      focusNode: _focus,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: AllButton(
                        text: 'Lanjut',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OtpPassword(),
                            ),
                          );
                        },
                        backgroundColor: ColorPath.background,
                        textColor: ColorPath.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
