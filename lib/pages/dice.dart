import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int diceNumber = 1;

  int rollDice() {
    var random = Random();
    return random.nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/dice${diceNumber.toString()}.png'),
          MaterialButton(
              onPressed: () {
                setState(() {
                  diceNumber = rollDice();
                });
              },
              color: Colors.blue,
              child: const Text('Roll the Dice!'))
        ],
      ),
    );
  }
}
