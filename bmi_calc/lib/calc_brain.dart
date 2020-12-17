import 'dart:math';

class BmiCalc {
  BmiCalc({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String bmiCalc() {
    _bmi = weight / pow(height/100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'Do more exercise to burn your fat.';
    else if (_bmi > 18.5)
      return 'Good job, keep going !';
    else
      return 'You need to eat more';
  }
}
