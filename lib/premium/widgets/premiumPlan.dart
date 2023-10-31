import 'package:flutter/material.dart';
import 'package:spotify_clone/premium/widgets/buttons.dart';

class PremiumPlan extends StatelessWidget {
  const PremiumPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 2, 61, 50),
                              Color.fromARGB(255, 2, 88, 67),
                              Color.fromARGB(95, 3, 155, 109)
                            ],
                            stops: [
                              0.2,
                              0.5,
                              1
                            ]),
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                crossAxisAlignment: CrossAxisAlignment.end,
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
          Text(
                '3 months FREE with 6 months \nof Premium ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10,),
              Buttons(
                text: 'VIEW PLANS',
              ),
            SizedBox(height: 10),
        ],
      ),
    );
  }
}
