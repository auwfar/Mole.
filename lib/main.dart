import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mole/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mole',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF3F4F5),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MainScreen()
    );
  }
}