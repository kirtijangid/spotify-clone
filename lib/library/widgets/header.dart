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
            child: Text('Your Library'),
          )
        ],
      ),
    );
  }
}