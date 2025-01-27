// screens/receipt_screen.dart
import 'package:flutter/material.dart';

class ReceiptScreen extends StatelessWidget {
  final String phone;
  final String amount;
  final String message;

  ReceiptScreen({
    required this.phone,
    required this.amount,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ใบเสร็จการโอนเงิน'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('รายละเอียดการโอนเงิน',
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
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('รหัสรายการ', style: TextStyle(fontSize: 16.0)),
                Text('TXN123456789', style: TextStyle(fontSize: 16.0)),
              ],
            ),
            SizedBox(height: 24.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Simulate saving receipt
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('บันทึกสำเร็จ'),
                      content: Text('ใบเสร็จถูกบันทึกเรียบร้อยแล้ว'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.popUntil(
                                context, (route) => route.isFirst);
                          },
                          child: Text('ตกลง'),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('บันทึกใบเสร็จ'),
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
