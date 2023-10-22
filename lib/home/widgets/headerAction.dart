import 'package:flutter/material.dart';

class HeaderActions extends StatelessWidget {
  const HeaderActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.history,
        color: Colors.white,
        size: 20,),
        const SizedBox(width: 20,)
      ],
    );
  }
}