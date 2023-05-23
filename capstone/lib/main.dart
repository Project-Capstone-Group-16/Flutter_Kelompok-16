import 'package:capstone/forgot_password.dart';
import 'package:capstone/new_password.dart';
import 'package:capstone/otp_password.dart';
import 'package:flutter/material.dart';
import 'package:capstone/forgot_success.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: ForgotSuccess(),
    );
  }
}
