// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:testingapp/constants/style.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String title;
  const IconContent({
    super.key, required this.iconData, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: Colors.white,
          size: 70,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: kTextStyle,
        ),
      ],
    );
  }
}
