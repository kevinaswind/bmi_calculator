import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({this.height, this.weight});

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return '超重';
    } else if (_bmi > 18.5) {
      return '正常';
    } else {
      return '偏轻';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '您已经超重，请合理饮食并加强锻炼';
    } else if (_bmi > 18.5) {
      return '您体重正常，请继续保持！';
    } else {
      return '您体重偏轻，请注意加强营养';
    }
  }
}
