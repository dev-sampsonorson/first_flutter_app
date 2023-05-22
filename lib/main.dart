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
          body: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(child: Icon(Icons.backpack)),
              Icon(Icons.person),
              // Take up any available space
              Expanded(flex: 1, child: Icon(Icons.leaderboard)),
            ],
          )
      ),
    );
  }
}
