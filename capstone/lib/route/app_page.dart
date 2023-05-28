import 'package:get/get.dart';
import 'app_route.dart';

import 'package:capstone/screen.dart';

class AppPage{
  static var list=[
    GetPage(
      name: AppRoute.landing_page, 
      page: ()=>const LandingPage()
      ),
    GetPage(
      name: AppRoute.login_or_register, 
      page: ()=>const LoginRegister()
      ),
    GetPage(
      name: AppRoute.login_page, 
      page: ()=>const LoginPage()
      ),
    GetPage(
      name: AppRoute.register_page, 
      page: ()=>const RegisterPage()
      ),
    GetPage(
      name: AppRoute.lupa_password, 
      page: ()=>const ForgotPassword()
      ),
  ];
}
