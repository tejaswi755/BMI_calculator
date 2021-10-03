import 'dart:math';

class BmiResult {
  BmiResult({this.height, this.weight});
  int height;
  int weight;
  double _bmi;

  String calculateBmi() {
    _bmi = weight / (pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String overwiew() {
    if (_bmi >= 25) {
      return ('Overweight');
    } else if (_bmi > -18.5) {
      return ('Normal');
    } else {
      return ('Under-Weight');
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return ('you have a higher than normal body weight. Try to do more exercise');
    } else if (_bmi > -18.5) {
      return ('you have a normal body weight. Good keep it up!');
    } else {
      return ('You have a lower than normal body weight.you can eat a bit more');
    }
  }
}
