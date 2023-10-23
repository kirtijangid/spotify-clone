
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderActions extends StatelessWidget {
  const HeaderActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: 180,),
        Icon(Icons.history,
        color: Colors.white,
        size: 22,
        ),
        SizedBox(width: 20,),
        Icon(FontAwesomeIcons.gear,
        color: Colors.white,
        size: 20,
        )
      ],
    );
  }
}