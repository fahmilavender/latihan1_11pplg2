import 'package:get/get.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/edit_player_page.dart';
import 'package:latihan1_11pplg2/pages/football_player_page.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class AppPages {
  static final pages = [
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
  ];
}