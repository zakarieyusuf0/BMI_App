// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class roundbutton extends StatelessWidget {
  final IconData icons;
  final Function()? Onpressed;
  const roundbutton({
    super.key,
    required this.icons,
    this.Onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: Onpressed,
      fillColor: const Color(0xFF343446),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 55,
        height: 55,
      ),
      child: Icon(
        icons,
        size: 34,
        color: Colors.white,
      ),
    );
  }
}
