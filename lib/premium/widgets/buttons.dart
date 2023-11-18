import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Buttons extends StatefulWidget {
  Buttons({super.key, required this.text});
  final String text;

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  late Razorpay _razorpay;

  @override
  void initState() {
    _razorpay = Razorpay();
    super.initState();
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  void openCheckout() async {
    try {
      _razorpay.open({
        'name': 'spotify premium',
        'key': 'rzp_live_ILgsfZCZoFIKMb',
        'amount': 54900,
        'description' : 'General',
        'retry': {'enabled': true, 'max_count': 1},
        'send_sms_hash': true,
        'prefil': {'contact': '9123456321', 'email': 'me@spotify.com'},
        'wallet': ['paytm']

      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 80, right: 80),
      height: 50,
      child: TextButton(
        onPressed: openCheckout,
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          widget.text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
