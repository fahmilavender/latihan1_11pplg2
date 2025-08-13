import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/football_player_controller.dart';
import 'package:latihan1_11pplg2/models/football_player_model.dart';

class EditPlayerController extends GetxController {
  late TextEditingController nameController;
  late TextEditingController positionController;
  late TextEditingController numberController;

  late int playerIndex;
  late FootballPlayer player;

  @override
  void onInit() {
    super.onInit();
    
    var args = Get.arguments as Map;
    playerIndex = args['index'];

    player = Get.find<FootballPlayerController>().players[playerIndex];

    nameController = TextEditingController(text: player.name);
    positionController = TextEditingController(text: player.position);
    numberController = TextEditingController(text: player.number.toString());
  }

  void savePlayer() {
    final updatedPlayer = player.copyWith(
      name: nameController.text,
      position: positionController.text,
      number: int.tryParse(numberController.text) ?? player.number,
    );

    Get.find<FootballPlayerController>().updatePlayer(playerIndex, updatedPlayer);
    Get.back();
  }

  @override
  void onClose() {
    nameController.dispose();
    positionController.dispose();
    numberController.dispose();
    super.onClose();
  }
}