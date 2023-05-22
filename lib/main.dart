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
        body: Row(
          children: [
            Container(
              width: 5000,
              height: 5000,
              color: Colors.amber,
            ),
            Container(
              width: 5000,
              height: 5000,
              color: Colors.amber,
            ),
            Container(
              width: 5000,
              height: 5000,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
