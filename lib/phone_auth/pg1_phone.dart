import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PhonePage1 extends StatefulWidget {
  const PhonePage1({super.key});

  static String verify = "";

  @override
  State<PhonePage1> createState() => _PhonePage1State();
}

class _PhonePage1State extends State<PhonePage1> {
  TextEditingController countrycode = TextEditingController();
  var phone = "";
  @override
  void initState() {
    // TODO: implement initState
    countrycode.text = '+91';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/auth_otp.png',
              width: 180,
              height: 180,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Phone verification',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We need to register your phone before registration.',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: countrycode,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        phone = value;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Phone number'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: '${countrycode.text + phone}',
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {},
                    codeSent: (String verificationId, int? resendToken) {
                      PhonePage1.verify = verificationId;
                      Navigator.pushNamed(context, 'otp');
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                  //Navigator.pushNamed(context, 'otp');
                },
                child: Text(
                  'Send OTP',
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  shadowColor: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
