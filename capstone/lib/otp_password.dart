import 'package:capstone/new_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'components/color_path.dart';

class OtpPassword extends StatefulWidget {
  const OtpPassword({super.key});

  @override
  State<OtpPassword> createState() => _OtpPasswordState();
}

class _OtpPasswordState extends State<OtpPassword> {
  FocusNode _focus = FocusNode();
  TextEditingController _emailController = TextEditingController();
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
    var width = MediaQuery.of(context).size.width;
    String currentText = "";

    final TextEditingController? controller;

    /// Colors of the input fields which have inputs. Default is [Colors.green]
    final Color activeColor;

    /// Color of the input field which is currently selected. Default is [Colors.blue]
    final Color selectedColor;

    /// Colors of the input fields which don't have inputs. Default is [Colors.red]
    final Color inactiveColor;

    /// Colors of the input fields if the [PinCodeTextField] is disabled. Default is [Colors.grey]
    final Color disabledColor;

    /// Colors of the input fields which have inputs. Default is [Colors.green]
    final Color activeFillColor;

    /// Color of the input field which is currently selected. Default is [Colors.blue]
    final Color selectedFillColor;

    /// Colors of the input fields which don't have inputs. Default is [Colors.red]
    final Color inactiveFillColor;

    /// Color of the input field when in error mode. Default is [Colors.redAccent]
    final Color errorBorderColor;

    /// Border radius of each pin code field
    final BorderRadius borderRadius;

    /// [height] for the pin code field. default is [50.0]
    final double fieldHeight;

    /// [width] for the pin code field. default is [40.0]
    final double fieldWidth;

    /// Border width for the each input fields. Default is [2.0]
    final double borderWidth;

    /// this defines the shape of the input fields. Default is underlined
    final PinCodeFieldShape shape;
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
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text('Masukkan Kode OTP',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorPath.background,
                          )),
                    ),
                    SizedBox(height: 20),
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
                        animationDuration: Duration(milliseconds: 300),
                        enableActiveFill: false,
                        controller: textEditingController,
                        onCompleted: (v) {},
                        onChanged: (value) {
                          setState(() {
                            currentText = value;
                          });
                        },
                        appContext: context,
                      ),
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewPassword()));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 10),
                          decoration: BoxDecoration(
                            color: ColorPath.background,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Text(
                            'Kirim',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
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
