import 'package:capstone/model/controller/login_controller.dart';
import 'package:flutter/material.dart';

import 'package:capstone/components/all_button.dart';
import 'package:capstone/components/color_path.dart';
import 'package:capstone/components/email_textfield.dart';
import 'package:capstone/components/password_textfield.dart';
import 'package:capstone/screen.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController loginController = Get.put(LoginController());

  final _formKey = GlobalKey<FormState>();

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  // final emailController = TextEditingCon  troller(
  //     // text: "subaruputra13@gmail.com",
  //     );
  // final passwordController = TextEditingController(
  //     // text: "subaru1",
  //     );

  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _emailFocus.addListener(_onFocusChange);
    _emailFocus.addListener(_onFocusChange);
    _passwordFocus.addListener(_onConfirmPasswordFocusChange);
  }

  void _onConfirmPasswordFocusChange() {
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

  @override
  void dispose() {
    super.dispose();
    _emailFocus.removeListener(_onFocusChange);
    _emailFocus.dispose();
    _passwordFocus.removeListener(_onConfirmPasswordFocusChange);
    _passwordFocus.dispose();
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
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Hai!                               Selamat Datang Kembali',
                          style: TextStyle(
                            fontSize: 28,
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
                      const SizedBox(height: 5),
                      EmailTextField(
                        controller: loginController.emailEditingController,
                        labelText: 'Masukkan Email Anda',
                        obscureText: false,
                        focusNode: _emailFocus,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email Tidak Boleh Kosong';
                          }
                          final bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                          ).hasMatch(value);
                          if (!emailValid) {
                            return 'Email Tidak Sesuai';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text('Kata Sandi',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: ColorPath.background,
                            )),
                      ),
                      const SizedBox(height: 5),
                      PasswordTextField(
                        controller: loginController.passwordEditingController,
                        labelText: "Masukkan Kata Sandi Anda",
                        obscureText: !_isPasswordVisible,
                        focusNode: _passwordFocus,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Masukkan Kata Sandi Anda';
                          } else if (value.length < 6) {
                            return 'Kata Sandi Kurang Dari 6 Karakter';
                          } else {
                            return null;
                          }
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPassword(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Lupa Kata Sandi?',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 95, 92, 92),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 60),
                      Center(
                        child: AllButton(
                          text: 'Masuk',
                          onTap: () => loginController.loginWithEmail(),

                          // () {
                          //   final isValidForm =
                          //       _formKey.currentState!.validate();

                          //   if (isValidForm) {
                          //     Navigator.of(context).pushReplacement(
                          //       MaterialPageRoute(
                          //         builder: (context) => const DashboardScreen(),
                          //       ),
                          //     );
                          //   }
                          // },

                          backgroundColor: ColorPath.background,
                          textColor: ColorPath.white,
                        ),
                      ),
                      const SizedBox(height: 5),
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
                              width: 17.0,
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
                              width: 17.0,
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
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
