import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/edit_player_controller.dart';
import 'package:latihan1_11pplg2/widgets/custom_text_field.dart';

class EditPlayerPage extends StatelessWidget {
  final EditPlayerController controller = Get.put(EditPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(
              controller: controller.nameController,
              label: "Name",
            ),
            SizedBox(height: 10),
            CustomTextField(
              controller: controller.positionController,
              label: "Position",
            ),
            SizedBox(height: 10),
            CustomTextField(
              controller: controller.numberController,
              label: "Position",
              isNumber: true,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                controller.savePlayer();
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}

