import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
   Buttons({super.key, required this.text});
  final String text;

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 80, right: 80),
      height: 50,
      child: TextButton(
        onPressed: () {}, 
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
