import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Pokedex App',
      home: const MainApp(),
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex App'),
      ),
    );
  }
}
