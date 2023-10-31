import 'package:flutter/material.dart';
import 'package:spotify_clone/data%20.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / (5.7),
          ),
          ...Data().carousel.map(
            (val) {
              return Container(
                child: Row(
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 99, 99, 98),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'FREE',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            val['free'].toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
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
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'PREMIUM',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            val['premium'].toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15,),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
