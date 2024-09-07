import 'dart:math';
import 'package:dice_roller/widgets/custom_button.dart';
import 'package:flutter/material.dart';

final Random random = Random();

class GradientContainer extends StatefulWidget {
  const GradientContainer({
    super.key,
    required this.color1,
    required this.color2,
  });
  final Color color1;
  final Color color2;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  int diceNumber = 1;

  void diceRoll() {
    int randomDice = random.nextInt(6) + 1;
    setState(() {
      diceNumber = randomDice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            widget.color1,
            widget.color2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dice_$diceNumber.png',
            width: 250,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            onPressed: diceRoll,
            text: 'Roll The Dice',
          ),
        ],
      ),
    );
  }
}
