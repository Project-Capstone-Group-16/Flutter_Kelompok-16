import 'package:get/get.dart';
import 'app_route.dart';

import 'package:capstone/screen.dart';

class AppPage {
  static var list = [
    GetPage(name: AppRoute.landing_page, page: () => const LandingPage()),
    GetPage(
        name: AppRoute.login_or_register, page: () => const LoginRegister()),
    GetPage(name: AppRoute.login_page, page: () => const LoginPage()),
    GetPage(name: AppRoute.register_page, page: () => const RegisterPage()),
    GetPage(name: AppRoute.lupa_password, page: () => const ForgotPassword()),
    GetPage(
        name: AppRoute.dashboard_screen, page: () => const DashboardScreen()),
    GetPage(name: AppRoute.explore_screen, page: () => const ExploreScreen()),
    GetPage(name: AppRoute.cariloker_screen, page: () => const CariLoker()),
    GetPage(
        name: AppRoute.category_barang_screen,
        page: () => const CategoryBarangScreen()),
    GetPage(
        name: AppRoute.estimasi_biaya_screen,
        page: () => const EstimasiBiayaScreen()),
    GetPage(
        name: AppRoute.durasi_penitipan_screen,
        page: () => const DurasiPenitipan()),
    GetPage(
        name: AppRoute.metode_pembayaran_screen,
        page: () => const MetodePembayaranScreen()),
  ];
}
