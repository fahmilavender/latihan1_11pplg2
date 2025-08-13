import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/football_player_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'edit_player_page.dart';

class FootballPlayerPage extends StatelessWidget {
  FootballPlayerPage({Key? key}) : super(key: key);

  final FootballPlayerController footballPlayerController = Get.put(FootballPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Real Madrid Players")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(() => ListView.builder(
              itemCount: footballPlayerController.players.length,
              itemBuilder: (context, index) {
                final player = footballPlayerController.players[index];
                return ListTile(
                  leading: Image.asset(
                    player.image,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(player.name),
                  subtitle: Text("${player.position} - #${player.number}"),
                  onTap: () {
                    Get.toNamed(AppRoutes.editFootballPage ,arguments: {'index': index});
                  },
                );
              },
            )),
      ),
    );
  }
}
