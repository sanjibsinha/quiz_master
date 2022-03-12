import 'package:flutter/material.dart';

import 'view/quiz_app.dart';

void main() => runApp(const QuizApp());


/**
 void main() {
  
  int resultOfAddition = calculate(20, 10, add); // 30
  
  print(resultOfAddition);
  
  int resultOfSubtraction = calculate(20, 10, subtract); // 10
  
  print(resultOfSubtraction);  
  
  Robot robu = Robot(obey: bringVegetable);
  
  print(robu.obey); // Closure 'bringVegetable'
  
  robu.obey!(); // Bring some vegetable
  
  robu.obey = bringMoreRobots;
  
  robu.obey!(); // Bring some more Robots
  
}

int add(int num1, int num2) {
  int result = num1 + num2;
  return result;
}

int subtract(int num1, int num2) {
  int result = num1 - num2;
  return result;
}

int calculate(int x, int y, Function performCalculation) {
  return performCalculation(x, y);
}


class Robot {
  
  Function? obey;
  
  Robot({this.obey});
}

void bringVegetable() {
  print('Bring some vegetable');
}

void bringMoreRobots() {
  print('Bring some more Robots');
}
  
 * 
 */
