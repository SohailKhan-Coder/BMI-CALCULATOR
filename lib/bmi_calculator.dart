import 'dart:math';

class CalculateBMI {
  int calWeight;
  int calHeight;
  double? bmi;
  CalculateBMI({required this.calWeight, required this.calHeight});

  String calculatedBMI() {
    bmi = calWeight / pow(calHeight / 100, 2);
    return bmi!.toStringAsFixed(1);
  }

  String getResultText() {
    if ( bmi! < 18){
      return "Loss Weight";
    }else if (bmi! > 18 && bmi! < 25){
      return "NORMAL";
    }else{
      return "Over Weight";
    }

  }

  String getInterpretation() {
    if (bmi! >= 25) {
      return "You are higher weight than normal, Please Continue exercise";
    } else if (bmi! > 18) {
      return "You have normal weight. Good job!";
    } else {
      return "You are lower weight than normal, Please eat more";
    }
  }
}
