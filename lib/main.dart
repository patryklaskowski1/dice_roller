import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  Random randomNumber = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIMPLE DICE ROLLER',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'DICE ROLLER',
          ),
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: Colors.indigoAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'You throw out :',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image(
                height: 250,
                image: AssetImage(
                  'images/dice$number.png',
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigoAccent,
                  fixedSize: const Size(100, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'ROLL',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                onPressed: () {
                  setState(
                    () {
                      number = randomNumber.nextInt(6) + 1;
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
