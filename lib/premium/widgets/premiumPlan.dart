import 'package:flutter/material.dart';

class PremiumPlan extends StatelessWidget {
  const PremiumPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Premium Individual',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '₹549',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                            'FOR 9 MONTHS',
                            style: TextStyle(
                              color: Color.fromARGB(255, 187, 186, 186),
                            ),
                          ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}
