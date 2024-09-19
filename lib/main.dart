// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testingapp/result.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int age = 30; //age by default
  int weight = 78; //age by default
  double height = 175; //age by default
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(s
      //   title: Text(
      //     'BMI CALCULATOR',
      //     style: TextStyle(
      //       color: Colors.white24,
      //     ),
      //   ),
      // ),
      backgroundColor: Color(0xff060918),

      body: Container(
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            //title ka bmi
            Row(
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
            ),
            SizedBox(
              height: 20,
            ),
            //the two containers // age
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // margin: EdgeInsets.only(right: 30),

                  decoration: BoxDecoration(
                    color: Color(
                      0xff151829,
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '$age',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 75,
                        ),
                      ),
                      //+ and - buttons
                      Row(
                        children: [
                          // minus button -
                          Container(
                            decoration: BoxDecoration(
                              color: Color(
                                0xff2E3140,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (age > 10) age--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          // plus button +
                          Container(
                            decoration: BoxDecoration(
                              color: Color(
                                0xff2E3140,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                // weight button ka
                Container(
                  decoration: BoxDecoration(
                    color: Color(
                      0xff151829,
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  padding:
                      EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 15),
                  child: Column(
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '$weight',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 75,
                        ),
                      ),
                      //+ and - buttons
                      Row(
                        children: [
                          // minus button -
                          Container(
                            decoration: BoxDecoration(
                              color: Color(
                                0xff2E3140,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 30) weight--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          // plus button +
                          Container(
                            decoration: BoxDecoration(
                              color: Color(
                                0xff2E3140,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(
                  0xff151829,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    'Height (CM)',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    '${height.toInt()}',
                    style: TextStyle(
                      fontSize: 75,
                      color: Colors.white,
                    ),
                  ),
                  Slider(
                      value: height,
                      min: 100,
                      max: 300,
                      divisions: 200,
                      activeColor: Color(0xff0054D1),
                      inactiveColor: Color(0xff0054D1),
                      label: height.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          height = value;
                        });
                      }),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' 100 CM',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '300 CM',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(
                  0xff151829,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    'Sex',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Male',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Expanded(
                        child: Switch(
                          value: isMale,
                          inactiveThumbColor: Colors.blue,
                          inactiveTrackColor: Colors.grey,
                          // trackOutlineWidth: ,
                          onChanged: (bool value) {
                            setState(() {
                              isMale = value;
                            });
                          },
                        ),
                      ),
                      Text(
                        'Female',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff0054D1),
                      padding: EdgeInsets.all(10),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Result(
                            age_: age,
                            height_: height,
                            weight_: weight,
                            isMale_: isMale,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'CALCULATE BMI',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
