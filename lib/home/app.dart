import 'package:flutter/material.dart';
import 'package:spotify_clone/auth_gate.dart';


class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: AuthGate(),
      
   );
 }
}