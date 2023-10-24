import 'package:flutter/material.dart';
class JumpIn extends StatelessWidget {
  const JumpIn({super.key});

  @override
   Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        child: const Text(
          'Jump back in',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'LibreFranklin',
            color: Colors.white,
          ),
        ),
    ),
    ]);
  }
}