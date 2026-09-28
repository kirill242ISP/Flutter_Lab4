import 'package:flutter/material.dart';
import 'package:flutter_lab4_app/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  var activeDiceImage = 'assets/images/dice-1.png';
  GradientContainer({super.key});
  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print("Изменили картинку");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.blue,
            Colors.yellow,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 300,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                ), // EdgeInsets.only
                foregroundColor: Colors.lime,
                textStyle: const TextStyle(
                  fontSize: 30,
                ), // TextStyle
              ), // TextButton.styleFrom
              child: const Text("Roll Dice"),
            ), // TextButton
          ],
        ),
      ),
    );
  }
}
