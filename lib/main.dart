import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'True Money Wallet',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: WalletHomePage(),
    );
  }
}

class WalletHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('True Money Wallet'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.orange,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  '฿ 1,000.00',
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              padding: EdgeInsets.all(16.0),
              children: [
                WalletFeature(icon: Icons.send, label: 'Transfer'),
                WalletFeature(icon: Icons.qr_code, label: 'Scan'),
                WalletFeature(icon: Icons.payment, label: 'Pay Bills'),
                WalletFeature(icon: Icons.history, label: 'History'),
                WalletFeature(
                    icon: Icons.account_balance_wallet, label: 'Top Up'),
                WalletFeature(icon: Icons.more_horiz, label: 'More'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WalletFeature extends StatelessWidget {
  final IconData icon;
  final String label;

  WalletFeature({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.orange,
          child: Icon(icon, size: 30, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
