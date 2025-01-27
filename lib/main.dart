// main.dart
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'transfer_screen.dart';
import 'confirm_payment_screen.dart';
import 'otp_screen.dart';
import 'receipt_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
