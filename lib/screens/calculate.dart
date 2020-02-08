

import 'dart:math';

class Calculate{

  Calculate({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateResult(){

    _bmi = weight / (pow((height/100), 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult (){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi <= 18){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'Dude get on diet';
    }else if(_bmi <= 18){
      return 'Good job!';
    }else{
      return 'You need to eat';
    }
  }
}