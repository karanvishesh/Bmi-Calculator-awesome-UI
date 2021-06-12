import 'dart:math';

class BmiCalculator {
  BmiCalculator({this.weight, this.height});

  final weight;
  final height;
  double _bmi;

  String Calculate_bmi() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String result_text() {
    if (_bmi < 16) {
      return "Severely underweight";
    } else if (16 <= _bmi && _bmi < 18.5) {
      return "underwieght";
    } else if (18.5 <= _bmi && _bmi < 25) {
      return "normal";
    } else if (25 <= _bmi && _bmi < 30) {
      return "overeweight";
    } else {
      return "obese";
    }
  }

  String interpretation() {
    if (_bmi < 16) {
      return "Try to eat every second!!";
    } else if (17 < _bmi && _bmi < 18.5) {
      return "Eat more!! Work less";
    } else if (18.5 <= _bmi && _bmi < 25) {
      return "You have a normal body weight.Good job!";
    } else if (25 <= _bmi && _bmi < 30) {
      return "Ignore every food that's around you";
    } else {
      return "Just stop eatingggg yaar!!!";
    }
  }
}
