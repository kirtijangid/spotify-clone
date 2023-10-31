import 'package:flutter/material.dart';

class CurrentPlans extends StatelessWidget {
  const CurrentPlans({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Spotify Free',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
           Text(
            'CURRENT PLAN ',
            style: TextStyle(
              color: Color.fromARGB(255, 196, 193, 193),
              fontWeight: FontWeight.bold,
              fontSize: 10,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}
