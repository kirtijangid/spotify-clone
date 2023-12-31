//import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/auth_gate.dart';
import 'package:spotify_clone/firebase_options.dart';
import 'package:spotify_clone/home/homepage.dart';
import 'package:spotify_clone/library/library.dart';
import 'package:spotify_clone/phone_auth/otp.dart';
import 'package:spotify_clone/phone_auth/pg1_phone.dart';
import 'package:spotify_clone/premium/premium.dart';
import 'package:spotify_clone/search/search.dart';
import 'package:spotify_clone/utils/notify.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Notify notify = Get.put(Notify());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthGate(),
      initialRoute: '/',
      routes: {
        'phone': (context) => PhonePage1(),
        'otp': (context) => OTP(),
        // 'home':(context) => MyHome(),
         'home': (context) => const HomePage(),
        '/search': (context) => const Search(),
        '/library': (context) => const Library(),
        '/premium': (context) => const Premium(),
      },
    );
  }
}
