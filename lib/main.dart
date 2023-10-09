import 'package:flutter/material.dart';
import 'package:pokedex_app/screens/pages/homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Pokedex App',
      home: const Homescreen(),
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
    ),
  );
}
