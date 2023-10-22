//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
    ]);
  runApp( MaterialApp(
    home: MyApp(),
     initialRoute: '/',
     routes: {
         '/home' : (context) => HomePage(),
    //   '/search' : (context) => Search(),
    //   '/library' : (context) => LibraryScreen(),
    //   '/premium' : (context) => Premium(),
     },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('ok'),
    );
  }
}
