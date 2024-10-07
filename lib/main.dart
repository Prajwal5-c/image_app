// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'multiplication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp ( home: MultiplicationTable(),
    );
  }
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 300,
        width: 300,
        color: Colors.brown,
        child: Column(children: [
          // Image.asset("Images/Capture.PNG", height: 80, width: 120,),
          Image.network(
            "https://api.trishaheed.edu.np/storage/students/hAQ8wHsHZqtIP3HIIQhOaRZrqlCcY53TkctikZ7N.jpg",
            height: 80,
            width: 120,
          ),
          Text(
            "Prajwal",
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "Student,calss 10",
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Text(
            "Our school fosters a nurturing environment that goes beyond just academics. The diverse extracurricular activities and opportunities for creative expression have helped me discover my true passions. It's not just about textbooks here; it’s about growing as a whole person",
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
          ),
        ]),
      )
    ]);
  }
}
