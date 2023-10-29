import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Color.fromARGB(255, 42, 56, 252),
            child: Text('K',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          SizedBox(width: 10),
          Text('Your Library',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),)
        ],
      ),
    );
  }
}