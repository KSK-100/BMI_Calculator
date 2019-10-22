import 'dart:math';

class BMIBrain {
  BMIBrain({this.height, this.weight});

  int height;
  int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.1)
      return 'Normal';
    else
      return 'Underweight';
  }

  String bmiInterpretation() {
    if (_bmi >= 25)
      return 'You should exercise more';
    else if (_bmi > 18.1)
      return 'You have a normal body weight. Good Job!';
    else
      return 'You need to eat more.';
  }
}
