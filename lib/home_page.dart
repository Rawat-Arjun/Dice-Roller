import 'package:dice_roller/widgets/gradient_container.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatelessWidget {
  const DiceRoller({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dice Roller',
          style: TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: const GradientContainer(
        color1: Colors.pinkAccent,
        color2: Color.fromARGB(255, 133, 8, 50),
      ),
    );
  }
}
