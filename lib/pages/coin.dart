import 'package:flutter/material.dart';
import 'dart:math';

class Coin extends StatefulWidget {
  const Coin({Key? key}) : super(key: key);

  @override
  _CoinState createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  bool coinState = false;

  bool flipCoin() {
    var random = Random();
    return random.nextBool();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 64.0,
            child: Text(
                coinState ? 'H' : 'T',
              style: const TextStyle(fontSize: 48.0),
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                coinState = flipCoin();
              });
            },
            color: Colors.green,
            child: const Text('Flip the Coin!'),
          )
        ],
      ),
    );
  }
}
