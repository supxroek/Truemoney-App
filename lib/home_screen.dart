// screens/home_screen.dart
import 'package:flutter/material.dart';
import 'transfer_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TrueMoney Wallet'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.orange,
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTopMenuItem(context, Icons.add_circle_outline,
                    'เติมเงินเข้าบัญชี', null),
                _buildTopMenuItem(
                    context, Icons.attach_money, 'โอนเงิน', TransferScreen()),
                _buildTopMenuItem(context, Icons.qr_code_scanner, 'สแกน', null),
                _buildTopMenuItem(
                    context, Icons.receipt_long, 'ชำระเงิน', null),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              padding: EdgeInsets.all(16.0),
              children: [
                _buildGridItem(Icons.payment, 'โอนเงิน'),
                _buildGridItem(Icons.account_balance_wallet, 'จัดการเงิน'),
                _buildGridItem(Icons.qr_code, 'สแกน QR'),
                _buildGridItem(Icons.local_offer, 'โปรโมชั่น'),
                _buildGridItem(Icons.shop, 'ชำระบิล'),
                _buildGridItem(Icons.more_horiz, 'อื่นๆ'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.orangeAccent,
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          label,
          style: TextStyle(fontSize: 14.0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildTopMenuItem(
      BuildContext context, IconData icon, String label, Widget? targetPage) {
    return GestureDetector(
      onTap: () {
        if (targetPage != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => targetPage),
          );
        }
      },
      child: Column(
        children: [
          Icon(icon, size: 30.0, color: Colors.white),
          SizedBox(height: 4.0),
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 12.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
