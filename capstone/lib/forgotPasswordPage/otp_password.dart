import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:capstone/components/all_button.dart';
import 'new_password.dart';
import 'package:capstone/components/color_path.dart';

class OtpPassword extends StatefulWidget {
  const OtpPassword({super.key});

  @override
  State<OtpPassword> createState() => _OtpPasswordState();
}

class _OtpPasswordState extends State<OtpPassword> {
  final FocusNode _focus = FocusNode();
  TextEditingController textEditingController = TextEditingController();

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
    /// Colors of the input fields which don't have inputs. Default is [Colors.red]

    /// Color of the input field when in error mode. Default is [Colors.redAccent]

    /// Border radius of each pin code field

    /// [height] for the pin code field. default is [50.0]

    /// [width] for the pin code field. default is [40.0]

    /// Border width for the each input fields. Default is [2.0]

    /// this defines the shape of the input fields. Default is underlined
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
                      child: Text('Masukkan Kode OTP',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorPath.background,
                          )),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 30),
                      child: PinCodeTextField(
                        focusNode: _focus,
                        length: 4,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.circle,
                          fieldHeight: 60,
                          fieldWidth: 60,
                          activeFillColor: Colors.white,
                          inactiveColor: Colors.grey,
                        ),
                        keyboardType: TextInputType.number,
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: false,
                        controller: textEditingController,
                        onCompleted: (v) {},
                        onChanged: (value) {
                          setState(() {});
                        },
                        appContext: context,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: AllButton(
                        text: 'Kirim',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NewPassword(),
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
