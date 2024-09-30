import 'package:flutter/material.dart';

//not used yet 
class row extends StatelessWidget {
  const row({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            // textAlign: TextAlign.right,
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white54,
            ),
          ),
        ),
      ],
    );
  }
}
