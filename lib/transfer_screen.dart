// screens/transfer_screen.dart
import 'package:flutter/material.dart';
import 'confirm_payment_screen.dart';

class TransferScreen extends StatefulWidget {
  @override
  _TransferScreenState createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  final _phoneController = TextEditingController();
  final _amountController = TextEditingController();
  final _messageController = TextEditingController();
  bool _isFormValid = false;

  void _validateForm() {
    setState(() {
      _isFormValid =
          _phoneController.text.isNotEmpty && _amountController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โอนเงิน'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ยอดเงินในวอลเล็ท',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text('144.42 ฿',
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            Text('เลือกประเภทบัญชีผู้รับ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    child: Text('TrueMoney Wallet'),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                    ),
                    child: Text(
                      'PromptPay',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'เบอร์โทรศัพท์หรือชื่อผู้รับ',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.contacts),
              ),
              keyboardType: TextInputType.phone,
              onChanged: (_) => _validateForm(),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: 'ใส่จำนวนเงิน',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (_) => _validateForm(),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _messageController,
              decoration: InputDecoration(
                labelText: 'ข้อความถึงผู้รับ (ไม่บังคับ)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24.0),
            Center(
              child: ElevatedButton(
                onPressed: _isFormValid
                    ? () {
                        // ส่งข้อมูลไปยังหน้า ConfirmPaymentScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfirmPaymentScreen(
                              phone: _phoneController.text,
                              amount: _amountController.text,
                              message: _messageController.text,
                            ),
                          ),
                        );
                      }
                    : null, // ปุ่มจะถูก disable ถ้ายังไม่ครบ
                child: Text('โอนเงิน'),
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
