import 'package:flutter/material.dart';
import 'package:gdsc_app_week_flutter/pages/coin.dart';
import 'package:gdsc_app_week_flutter/pages/dice.dart';
import 'package:gdsc_app_week_flutter/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}