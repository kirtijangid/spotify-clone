import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderActions extends StatelessWidget {
  const HeaderActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.history,
        color: Colors.white,
        size: 20,),
        SizedBox(width: 20,),
        Icon(FontAwesomeIcons.gear,
        color: Colors.white,
        size: 20,)
      ],
    );
  }
}