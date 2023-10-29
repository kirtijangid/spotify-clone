import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 15),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Color.fromARGB(255, 42, 56, 252),
            child: Text(
              'K',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Your Library',
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
            children: [
              SizedBox(
                width: 120,
              ),
              Icon(
                Icons.search,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.add,
                color: Colors.white,
                size: 28,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
