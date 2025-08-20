import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/nav_controller.dart';
import 'calculator_page.dart';
import 'football_player_page.dart';
import 'profile_page.dart';

class MainPage extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> pages = [
    CalculatorPage(),
    FootballPlayerPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: pages[navController.currentIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navController.currentIndex.value,
        onTap: navController.changeTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
             label: "Calculator"
             ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer), 
            label: "Football"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: "Profile"
            ),
        ],
      ),
    ));
  }
}
