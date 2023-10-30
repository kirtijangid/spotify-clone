import 'package:flutter/material.dart';
import 'package:spotify_clone/bottomNavigation.dart';
import 'package:spotify_clone/premium/widgets/carousel.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(137, 24, 24, 24),
        body: ListView(
          children:   [
            Padding(padding: EdgeInsets.only(top: 50, )),
            const Text('''Get 9 months of 
Premium for ₹549''',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 33,
              fontWeight: FontWeight.bold,
            ),
            ),
            Cards(),
            //Button('Get Premium'),
            SizedBox(height: 10,),
            Text('data')

        ],
        ),
      bottomNavigationBar: BottomBar(3),
     ),
      );
  }
}