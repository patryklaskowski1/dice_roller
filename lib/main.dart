import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
        body: const Center(
          child: Image(
            image: AssetImage(
              'images/dice3.png',
            ),
          ),
        ),
      ),
    );
  }
}
