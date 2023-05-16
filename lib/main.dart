import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

var number = 1;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
              const Image(
                height: 250,
                image: AssetImage(
                  'images/dice1.png',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: (() {}),
                child: const Text(
                  'ROLL',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
