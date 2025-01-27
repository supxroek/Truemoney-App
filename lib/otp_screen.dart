// screens/otp_screen.dart
import 'package:flutter/material.dart';
import 'receipt_screen.dart';

class OTPScreen extends StatelessWidget {
  final String phone;
  final String amount;
  final String message;

  OTPScreen({
    required this.phone,
    required this.amount,
    required this.message,
  });

  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ยืนยันรหัส OTP'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('กรุณากรอกรหัส OTP ที่ส่งไปยังเบอร์โทรศัพท์ของคุณ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            TextField(
              controller: _otpController,
              decoration: InputDecoration(
                labelText: 'รหัส OTP',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 24.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // ไปยังหน้า ReceiptScreen เมื่อกรอก OTP
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReceiptScreen(
                        phone: phone,
                        amount: amount,
                        message: message,
                      ),
                    ),
                  );
                },
                child: Text('ยืนยัน'),
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
