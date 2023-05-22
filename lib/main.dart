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
        body: Stack(
          children: [
            Container(color: Colors.amber, width: 100, height: 100),
            // This will be on top of the container because
            // it's after the container
            const Positioned(
              top: 25,
              left: 25,
              child: Icon(Icons.verified),
            )
          ],
        ),
      ),
    );
  }
}
