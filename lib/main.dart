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
        body: ListView(
          scrollDirection: Axis.horizontal,
          addAutomaticKeepAlives: false,
          children: [
            Container(
              width: 500,
              height: 500,
              color: Colors.amber,
            ),
            Container(
              width: 500,
              height: 500,
              color: Colors.pink,
            ),
            Container(
              width: 500,
              height: 500,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
