import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

  final int weight;
  final int height;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 18.5 && _bmi < 25) {
      return 'PESO NORMAL';
    } else if (_bmi >= 25) {
      return 'SOBREPESO';
    } else {
      return 'ABAIXO DO PESO';
    }
  }

  String getInterpretation() {
    if (_bmi > 18.5 && _bmi < 25) {
      return 'Seu peso corporal está normal. Bom trabalho!';
    } else if (_bmi >= 25) {
      return 'Seu peso corporal está acima do normal. Procure fazer mais exercícios.';
    } else {
      return 'Seu peso corporal está abaixo do normal. Você pode comer um pouco mais.';
    }
  }
}
