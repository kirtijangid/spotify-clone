import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,left: 5, right: 5),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10),
          ),
      child: const Row(
        children: [
          SizedBox(width: 10),
          Icon(
            Icons.search_sharp,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(width: 10),
          Text('What do you want to listen to?',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 17,

          ),
          ),
        ],
      ),
    );
  }
}
