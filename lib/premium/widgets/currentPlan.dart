import 'package:flutter/material.dart';

class CurrentPlans extends StatelessWidget {
  const CurrentPlans({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 25,
        ),
        height: 80,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 77, 76, 75),
          borderRadius: BorderRadius.circular(8),
        ),
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
      ),
    );
  }
}
