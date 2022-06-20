// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'BMI_calculator.dart';
import 'BMI_result.dart';

void main() {
  runApp(MyApp());
}
// wo main widgets : Stateless and Stateful

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMI_calcuator(),

    );
  }
}

