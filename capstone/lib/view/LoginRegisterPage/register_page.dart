import 'package:flutter/material.dart';

import 'package:capstone/components/all_button.dart';
import 'package:capstone/components/color_path.dart';
import 'package:capstone/components/email_textfield.dart';
import 'package:capstone/components/password_textfield.dart';
import 'package:capstone/screen.dart';
import 'package:capstone/model/controller/auth_controller.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _confirmPasswordFocus = FocusNode();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final Auth authController=Get.find<Auth>();

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _emailFocus.addListener(_onFocusChange);
    _emailFocus.addListener(_onFocusChange);
    _passwordFocus.addListener(_passwordFocusChange);
    _confirmPasswordFocus.addListener(_onConfirmPasswordFocusChange);
  }

  void _passwordFocusChange() {
    if (_passwordFocus.hasFocus) {
      setState(() {
        height = 20;
      });
    } else {
      setState(() {
        height = 100;
      });
    }
  }

  void _onConfirmPasswordFocusChange() {
    if (_confirmPasswordFocus.hasFocus) {
      setState(() {
        height = 20;
      });
    } else {
      setState(() {
        height = 100;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailFocus.removeListener(_onFocusChange);
    _emailFocus.dispose();
    _passwordFocus.removeListener(_passwordFocusChange);
    _passwordFocus.dispose();
    _confirmPasswordFocus.removeListener(_onConfirmPasswordFocusChange);
    _confirmPasswordFocus.dispose();
  }

  void _onFocusChange() {
    if (_emailFocus.hasFocus) {
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
    width = MediaQuery.of(context).size.width;
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
              // height: height * 0.85,
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
                        'Hai!                                           Selamat Datang Kembali',
                        style: TextStyle(
                          fontSize: 22,
                          color: ColorPath.textcolor1,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: ColorPath.background,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    EmailTextField(
                      controller: emailController,
                      labelText: 'Masukkan Email Anda',
                      obscureText: false,
                      focusNode: _emailFocus,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 5),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text('Kata Sandi',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorPath.background,
                          )),
                    ),
                    const SizedBox(height: 4),
                    PasswordTextField(
                      controller: passwordController,
                      labelText: "Masukkan Kata Sandi Anda",
                      obscureText: !_isPasswordVisible,
                      focusNode: _passwordFocus,
                      validator: (value) {
                      },
                      suffixIcon: IconButton(
                        icon: Image.asset(
                          _isPasswordVisible
                              ? 'assets/images/visible.png' // Replace with the path to the visible icon image
                              : 'assets/images/invisible.png', // Replace with the path to the invisible icon image
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        'Konfirmasi Kata Sandi',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: ColorPath.background,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    PasswordTextField(
                      controller: confirmPasswordController,
                      labelText: "Masukkan Kembali Kata Sandi Anda",
                      obscureText: !_isConfirmPasswordVisible,
                      focusNode: _confirmPasswordFocus,
                      validator: (value) {
                      },
                      suffixIcon: IconButton(
                        icon: Image.asset(
                          _isConfirmPasswordVisible
                              ? 'assets/images/visible.png' // Replace with the path to the visible icon image
                              : 'assets/images/invisible.png', // Replace with the path to the invisible icon image
                        ),
                        onPressed: () {
                          setState(() {
                            _isConfirmPasswordVisible =
                                !_isConfirmPasswordVisible;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: AllButton(
                        text: 'Daftar',
                        onTap: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context)=>const DashboardScreen())
                              );
                        },
                        backgroundColor: ColorPath.background,
                        textColor: ColorPath.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Atau',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0XFF6D6D6D),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Center(
                      child: FractionallySizedBox(
                        widthFactor:
                            0.6, // Faktor lebar relatif terhadap parent
                        child: OutlinedButton.icon(
                          icon: Image.asset(
                            'assets/images/googlelogo.png',
                            width: 20.0,
                          ),
                          onPressed: () {},
                          label: const Text(
                            'Sign In With Google',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: FractionallySizedBox(
                        widthFactor:
                            0.6, // Faktor lebar relatif terhadap parent
                        child: OutlinedButton.icon(
                          icon: Image.asset(
                            'assets/images/applelogo.png',
                            width: 20.0,
                          ),
                          onPressed: () {},
                          label: const Text(
                            'Sign In With Apple',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 0.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Sudah Memiliki Akun?',
                          style: TextStyle(
                              color: ColorPath.textcolor1,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: ColorPath.background,
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
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
