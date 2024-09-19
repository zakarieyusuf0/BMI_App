// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int age_;
  final int weight_;
  final double height_;
  final bool isMale_;

  const Result({
    super.key,
    required this.age_,
    required this.weight_,
    required this.height_,
    required this.isMale_,
  });

  // Method to calculate BMI
  double calculateBmi() {
    return (weight_ / ((height_ / 100) * (height_ / 100)));
  }

  // Method to get BMI category and message separately
  Map<String, String> getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return {
        "category": "Underweight",
        "message":
            "You are underweight. Consider consulting a healthcare professional."
      };
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return {
        "category": "Normal weight",
        "message": "You have a healthy weight. Keep maintaining your lifestyle."
      };
    } else if (bmi >= 25.0 && bmi <= 29.9) {
      return {
        "category": "Overweight",
        "message":
            "You are slightly above the normal range. Consider healthier habits."
      };
    } else {
      return {
        "category": "Obesity",
        "message": "You are at very high risk. Seek medical advice."
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    double bmi = calculateBmi(); // Calculate the BMI
    Map<String, String> bmiData =
        getBMICategory(bmi); // Get BMI category and message
    String category = bmiData["category"]!; // Extract the category
    String message = bmiData["message"]!; // Extract the message

    return Scaffold(
      backgroundColor: Color(0xff060918),
      appBar: AppBar(
        backgroundColor: Color(0xff060918),
        elevation: 2,
        centerTitle: true,
        title: Text(
          'Result Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Body Mass Index (BMI)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xff151829),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    'Your BMI Result',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    bmi.toStringAsFixed(1), // Display BMI value
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 108,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    category, // Display the BMI category separately
                    style: TextStyle(
                      color: const Color(0xFF77CF7A),
                      fontSize: 28,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    message, // Display the message/advice separately
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0054D1),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Try Again',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
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
