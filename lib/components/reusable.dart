// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testingapp/constants/colors.dart';

class ReusableContainer extends StatelessWidget {
  final Widget? Child;
  const ReusableContainer({
    super.key,
    required this.Child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kCards,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Child,
    );
  }
}
