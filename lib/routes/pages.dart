import 'package:get/get.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/edit_player_page.dart';
import 'package:latihan1_11pplg2/pages/football_player_page.dart';
import 'package:latihan1_11pplg2/pages/main_page.dart';
import 'package:latihan1_11pplg2/pages/profile_page.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class AppPages {
  static final pages = [
     GetPage(
      name: AppRoutes.mainPage,
      page: () => MainPage(),
    ),
    GetPage(
      name: AppRoutes.calculatorPage,
      page: () => CalculatorPage(),
    ),
    GetPage(
      name: AppRoutes.footballPage,
      page: () => FootballPlayerPage(),
    ),
    GetPage(
      name: AppRoutes.editFootballPage,
      page: () => EditPlayerPage(),
    ),
    GetPage(
      name: AppRoutes.profilePage,
      page: () => ProfilePage(),
    ),
  ];
}