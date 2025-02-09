// main.dart
import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TrueMoney Wallet',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomeScreen(),
    );
  }
}
