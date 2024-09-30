// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:testingapp/components/icondata.dart';
import 'package:testingapp/constants/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testingapp/constants/style.dart';

import 'components/reusable.dart';
import 'components/roundbutton.dart';

void main() {
  runApp(MaterialApp(
    home: New(),
  ));
}

class New extends StatefulWidget {
  New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  double height = 190;
  int age = 30;
  int weight = 78;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimarColor,
      appBar: AppBar(
        backgroundColor: kPrimarColor,
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 10,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  // 1
                  Expanded(
                    child: ReusableContainer(
                      Child: IconContent(
                        iconData: FontAwesomeIcons.mars,
                        title: 'MALE',
                      ),
                    ),
                  ),
                  //2
                  Expanded(
                    child: ReusableContainer(
                      Child: IconContent(
                        iconData: FontAwesomeIcons.venus,
                        title: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(
                Child: Column(
                  children: [
                    Text(
                      'HEIGHT',
                      style: kTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.round().toString(),
                          style: kTextStyleHeight,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        activeTrackColor: Colors.grey,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: kButton,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 16,
                        ),
                      ),
                      child: Slider(
                        value: height,
                        min: 90,
                        max: 300,
                        onChanged: (double newVal) {
                          setState(() {
                            height = newVal;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  // 1
                  Expanded(
                    child: ReusableContainer(
                      Child: Column(
                        children: [
                          Text(
                            'Weight',
                            style: kTextStyle,
                          ),
                          Text(
                            '$weight',
                            style: kAgeWeight,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              roundbutton(
                                Onpressed: () {
                                  setState(() {
                                    if (weight > 30) --weight;
                                  });
                                },
                                icons: Icons.remove,
                              ),
                              roundbutton(
                                Onpressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icons: Icons.add,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //2
                  Expanded(
                    child: ReusableContainer(
                      Child: Column(
                        children: [
                          Text(
                            'Age',
                            style: kTextStyle,
                          ),
                          Text(
                            '$age',
                            style: kAgeWeight,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              roundbutton(
                                Onpressed: () {
                                  setState(() {
                                    if (age > 0) --age;
                                  });
                                },
                                icons: Icons.remove,
                              ),
                              roundbutton(
                                Onpressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icons: Icons.add,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
