import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 29, 28, 28),
             Color.fromARGB(255, 77, 76, 76)],
          ),
        ),
        child: ListView(children: [
          Row(
            children: [
              Text('Good Evening',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),)
            ],
          )
        ]),
      ),
    );
  }
}
