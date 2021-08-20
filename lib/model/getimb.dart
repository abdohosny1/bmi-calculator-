import 'dart:math';

class CalculateBrain{
  late int hight;
  late int weight;
   late double bmi;
  CalculateBrain({required this.hight,required this.weight});

  String calculateBIM(){
    bmi=weight  / pow(hight/ 100,2);
    return bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(bmi >=25.0){
      return 'over weigh';
    }
    else if(bmi >18.5){
      return 'Normal';
    }
    else{
      return 'under Weight';
    }
  }

  String getInterput(){
    if(bmi>=18.4){return 'You are underweight';}

    else if(bmi >=24.9){ return 'You are healthy';}

    else if(bmi>=29.9){  return 'You are over weigh';}

    else if(bmi>=34.9){ return 'You are severely over weight';}

    else if(bmi>=39.9){    return 'You are obese';}

    else{
    return 'You are severely obese';

    }

  }




}