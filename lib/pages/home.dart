import 'package:flutter/material.dart';
import 'package:gdsc_app_week_flutter/pages/coin.dart';
import 'package:gdsc_app_week_flutter/pages/dice.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice and Coin'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Dice(),
                  ),
                );
              },
              color: Colors.blue,
              child: const Text('Dice'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Coin(),
                  ),
                );
              },
              color: Colors.green,
              child: const Text('Coin'),
            )
          ],
        ),
      ),
    );
  }
}
