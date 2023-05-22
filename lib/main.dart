import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('My app!'),
          ),
          body: const Padding(
            padding: EdgeInsets.all(10),
            child: Text('Hi Mum!'),
          )
      ),
    );
  }
}
