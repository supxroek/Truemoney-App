// screens/confirm_payment_screen.dart
import 'package:flutter/material.dart';
import 'otp_screen.dart';

class ConfirmPaymentScreen extends StatelessWidget {
  final String phone;
  final String amount;
  final String message;

  ConfirmPaymentScreen({
    required this.phone,
    required this.amount,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ยืนยันการชำระเงิน'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ตรวจสอบข้อมูลการโอนเงิน',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ชื่อผู้รับ', style: TextStyle(fontSize: 16.0)),
                Text(phone, style: TextStyle(fontSize: 16.0)),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('จำนวนเงิน', style: TextStyle(fontSize: 16.0)),
                Text(amount + ' ฿',
                    style: TextStyle(fontSize: 16.0, color: Colors.orange)),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ข้อความถึงผู้รับ', style: TextStyle(fontSize: 16.0)),
                Text(message.isEmpty ? 'ไม่มีข้อความ' : message,
                    style: TextStyle(fontSize: 16.0)),
              ],
            ),
            SizedBox(height: 24.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // ส่งข้อมูลไปยังหน้า ReceiptScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OTPScreen(
                        phone: phone,
                        amount: amount,
                        message: message,
                      ),
                    ),
                  );
                },
                child: Text('ยืนยันการชำระเงิน'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                  textStyle: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
