import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            //radius: 15,
            backgroundColor: Colors.deepOrange,
            child: Text('K',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          )
        ],
      ),
    );
  }
}