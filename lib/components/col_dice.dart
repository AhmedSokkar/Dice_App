import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int intValue = 1;
  Random opRandom = Random();

  randomFun() {
    setState(() {
      intValue = opRandom.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "images/dice-$intValue.png",
          width: 200,
          height: 200,
        ),
        ElevatedButton.icon(
          onPressed: randomFun,
          label: const Text("Click Here"),
          icon: const Icon(Icons.ads_click_rounded),
        ),
      ],
    );
  }
}
