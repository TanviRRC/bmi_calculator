import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  double _bmi = 0.0;

  String bmiCalculation(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultBmi(){
    if(_bmi >= 18.5 && _bmi <= 24.9){
      return 'Healthy';
    }else if(_bmi >= 25){
      return 'Over Weight';
    }else{
      return 'Under Weight';
    }
  }
  String getInterpretation(){
    if(_bmi < 18.5){
      return 'You should eat more and do exercise.';
    }else if(_bmi >= 18.5 && _bmi <= 24.9){
      return 'You are perfectly in a good shape. Good job!';
    }else{
      return 'You should eat less and do more exercise.';
    }
  }


}