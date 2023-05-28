import 'package:get/get.dart';


import 'package:http/http.dart' as http;
import 'dart:convert';

class Auth extends GetxController{

 
    signUp(String email, String password) async{
    Uri url=Uri.parse(
      "143.198.92.250:8080/register");

  var response= await http.post(url, body: json.encode({
      "email": email,
      "password": password,
    }
    ));

    var data=(json.decode(response.body));

    if (data['message'] == 'success register user') {
      return null;
    }else if (data['error']=='email is already registered'){
      Get.snackbar('Whoops', 'This Email Is Already Registered');
    }else if(data['error']=='Password not match'){
      Get.snackbar('Password Not Match', 'Double Check Your Password');
    }
    }
   }
  
    login(String email, String password) async{
    Uri url=Uri.parse(
      "143.198.92.250:8080/login");

    var response= await http.post(url, body: json.encode({
      "email": email,
      "password": password,
      "returnSecureToken": true,
    }
    ));

    print(json.decode(response.body));
  }
  
