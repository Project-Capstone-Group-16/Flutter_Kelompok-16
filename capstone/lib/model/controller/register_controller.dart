import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:capstone/screen.dart';
import 'package:capstone/utils/api_endpoint_login_register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> registerWithEmail() async {
    var headers = {'Content-Type': 'application/json'};
    try {
      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.registerEmail);
      Map body = {
        'email': emailController.text.trim(),
        'password': passwordController.text,
        'confirm_password': confirmPasswordController.text,
      };
      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        var password = json['data']['password'];
        final SharedPreferences? prefs = await _prefs;
        await prefs?.setString('password', password);

        emailController.clear();
        passwordController.clear();
        confirmPasswordController.clear();
        Get.off(const LoginPage());
        if (json['code'] == 400) {
          throw jsonDecode(response.body)["Message"];
        }
      } else {
        throw jsonDecode(response.body)["Message"] ?? "Email sudah terdaftar";
      }
    } catch (error) {
      Get.back();
      showDialog(
        context: Get.context!,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Error'),
            contentPadding: const EdgeInsets.all(20),
            children: [Text(error.toString())],
          );
        },
      );
    }
  }
}
