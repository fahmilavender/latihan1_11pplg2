import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/calculator_controller.dart';
import 'package:latihan1_11pplg2/widgets/custom_button.dart';
import 'package:latihan1_11pplg2/widgets/custom_text_field.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              label: "Input Angka 1",
              controller: calculatorController.txtAngka1,
              isPassword: false,
              isNumber: true,
            ),
            CustomTextField(
              label: "Input Angka 2",
              controller: calculatorController.txtAngka2,
              isPassword: false,
              isNumber: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  child: CustomButton(
                    text: "+",
                    onPressed: () {
                      calculatorController.tambah();
                    },
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 80,
                  child: CustomButton(
                    text: "-",
                    onPressed: () {
                      calculatorController.kurang();
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  child: CustomButton(
                    text: "x",
                    onPressed: () {
                      calculatorController.kali();
                    },
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 80,
                  child: CustomButton(
                    text: "÷",
                    onPressed: () {
                      calculatorController.bagi();
                    },
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Hasil
            Obx(() {
              return Text(
                "Hasil: ${calculatorController.textHasil.value}",
                style: const TextStyle(fontSize: 20),
              );
            }),

            const SizedBox(height: 20),
            
            Center(
              child: SizedBox(
                width: 100,
                child: CustomButton(
                  text: "Clear",
                  onPressed: () {
                    calculatorController.txtAngka1.clear();
                    calculatorController.txtAngka2.clear();
                    calculatorController.textHasil.value = "";
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
