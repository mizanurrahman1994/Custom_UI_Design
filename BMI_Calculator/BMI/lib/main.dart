import 'package:bmi/calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMi",
      home: BmiCalculator(),
    ),
  );
}
