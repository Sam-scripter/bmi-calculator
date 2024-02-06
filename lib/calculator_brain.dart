import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  double? _bmi;

  CalculatorBrain({required this.weight, required this.height});

  final int weight;
  final int height;

  String? calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25.0) {
      return 'Overweight';
    } else if (_bmi! >= 18.5) {
      return 'Normal';
    } else {
      return 'very low BMI';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25.0) {
      return 'Overweight, eat less exercise more';
    } else if (_bmi! >= 18.5) {
      return 'Normal, your BMI is normal, no issues';
    } else {
      return 'very low BMI, are you eating, seriously';
    }
  }
}
