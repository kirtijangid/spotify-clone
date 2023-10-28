import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(color: Colors.white),
      child: const Row(
        children: [
          SizedBox(height: 10),
          Icon(Icons.search_sharp,
          size: 30,
          color: Colors.black,
          ),
        ],
      ),
    );
  }
}