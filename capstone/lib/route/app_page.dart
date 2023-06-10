import 'package:capstone/view/profile/faq_screen.dart';
import 'package:capstone/view/profile/profile.dart';
import 'package:get/get.dart';
import 'app_route.dart';

import 'package:capstone/screen.dart';

class AppPage {
  static var list = [
    GetPage(
      name: AppRoute.splash_screen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoute.landing_page,
      page: () => const LandingPage(),
    ),
    GetPage(
      name: AppRoute.login_or_register,
      page: () => const LoginRegister(),
    ),
    GetPage(
      name: AppRoute.login_page,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: AppRoute.register_page,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: AppRoute.lupa_password,
      page: () => const ForgotPassword(),
    ),
    GetPage(
      name: AppRoute.dashboard_screen,
      page: () => const DashboardScreen(),
    ),
    GetPage(
      name: AppRoute.explore_screen,
      page: () => const ExploreScreen(),
    ),
    GetPage(
      name: AppRoute.profile_screen,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: AppRoute.biodata_screen,
      page: () => const BiodataPage(),
    ),
    GetPage(
      name: AppRoute.histori_pesanan_screen,
      page: () => const Histori_Pesanan(),
    ),
    GetPage(
      name: AppRoute.pilih_bahasa_screen,
      page: () => const Pilih_bahasa(),
    ),
    GetPage(
      name: AppRoute.faq_screen,
      page: () => const Faq_Page(),
    ),
    GetPage(
      name: AppRoute.cariloker_screen,
      page: () => const CariLoker(),
    ),
    GetPage(
      name: AppRoute.category_barang_screen,
      page: () => const CategoryBarangScreen(),
    ),
    GetPage(
      name: AppRoute.estimasi_biaya_screen,
      page: () => const EstimasiBiayaScreen(),
    ),
    GetPage(
      name: AppRoute.durasi_penitipan_screen,
      page: () => const DurasiPenitipan(),
    ),
    GetPage(
      name: AppRoute.ringkasan_pemesanan_page,
      page: () => const RingkasanPemesananPage(),
    ),
    GetPage(
      name: AppRoute.metode_pembayaran_screen,
      page: () => const MetodePembayaranScreen(),
    ),
  ];
}
