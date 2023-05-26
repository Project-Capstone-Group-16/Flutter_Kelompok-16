import 'package:flutter/material.dart';

import 'package:capstone/components/color_path.dart';
import 'package:capstone/forgot_success.dart';
import 'components/all_button.dart';
import 'components/password_textfield.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final FocusNode _focus = FocusNode();
  final FocusNode _confirmPasswordFocus = FocusNode();
  final newPasswordController = TextEditingController();
  final confirmNewPasswordController = TextEditingController();

  bool _isPasswordVisible = false;
  bool _is2PasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
    _focus.addListener(_onFocusChange);
    _confirmPasswordFocus.addListener(_onConfirmPasswordFocusChange);
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
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
    _confirmPasswordFocus.removeListener(_onConfirmPasswordFocusChange);
    _confirmPasswordFocus.dispose();
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
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorPath.background,
      body: SafeArea(
        child: Stack(
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                    top: 100,
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
              margin: EdgeInsets.only(top: height * 2.5),
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
                        'Buat Kata Sandi     Baru Anda',
                        style: TextStyle(
                          fontSize: 32,
                          color: ColorPath.textcolor1,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text('Kata Sandi Baru',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorPath.background,
                          )),
                    ),
                    const SizedBox(height: 5),
                    PasswordTextField(
                      controller: newPasswordController,
                      labelText: 'Masukkan Password Baru',
                      obscureText: _isPasswordVisible,
                      focusNode: _focus,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'new password is required';
                        }
                        return null;
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
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text('Konfirmasi Kata Sandi',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorPath.background,
                          )),
                    ),
                    const SizedBox(height: 5),
                    PasswordTextField(
                      controller: confirmNewPasswordController,
                      labelText: 'Konfirmasi Password Baru',
                      obscureText: _is2PasswordVisible,
                      focusNode: _confirmPasswordFocus,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'confirm new password';
                        }
                        return null;
                      },
                      suffixIcon: IconButton(
                        icon: Image.asset(
                          _is2PasswordVisible
                              ? 'assets/images/visible.png' // Replace with the path to the visible icon image
                              : 'assets/images/invisible.png', // Replace with the path to the invisible icon image
                        ),
                        onPressed: () {
                          setState(() {
                            _is2PasswordVisible = !_is2PasswordVisible;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: AllButton(
                        text: 'Simpan',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgotSuccess(),
                            ),
                          );
                        },
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
