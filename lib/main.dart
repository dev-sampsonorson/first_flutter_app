import 'package:flutter/material.dart';

void main() {
  runApp(const RootScreen());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  void initState() {
    // TODO: fetch data from Firebase
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('My app!'),
        ),
        body: Center(
          child: Text('$count'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
      ),
    );
  }
}

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Refactor HomeScreen into separate widget to fix the following error;
      // Navigator operation requested with a context that does not include
      // a Navigator
      // https://stackoverflow.com/questions/44004451/navigator-operation-requested-with-a-context-that-does-not-include-a-navigator
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String img = 'resources/shaw.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Home page'),
      ),
      body: IconButton(
        icon: Hero(
          tag: img,
          child: const Image(image: AssetImage('resources/shaw.jpeg')),
        ),
        iconSize: 50,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const AboutScreen()));
        },
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  final String img = 'resources/shaw.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('About page'),
      ),
      body: Hero(
        tag: img,
        child: const Image(image: AssetImage('resources/shaw.jpeg')),
      ),
    );
  }
}
