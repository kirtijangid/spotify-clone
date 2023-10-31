import 'package:flutter/material.dart';
import 'package:spotify_clone/bottomNavigation.dart';
import 'package:spotify_clone/premium/widgets/buttons.dart';
import 'package:spotify_clone/premium/widgets/carousel.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(137, 24, 24, 24),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
            ),
            const Text(
              '''Get 9 months of 
Premium for ₹549''',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
            Cards(),
            Buttons(text: 'GET PREMIUM'),
            SizedBox(height: 10),
            Text(
              ' Terms & Conditions apply. Open only to users who aren\'t subscribed to a recurring Premium plan at a promotional price . Offers ends 10/11,2023.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        bottomNavigationBar: BottomBar(3),
      ),
    );
  }
}
