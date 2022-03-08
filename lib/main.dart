import 'package:flutter/material.dart';
import 'model/quiz_master.dart';
import 'view/quiz_app.dart';

QuizMaster quizMaster = QuizMaster();

void main() => runApp(const QuizApp());








/**
 void main() {
  
  AnImmutable anImmutable = AnImmutable(2); // setting a value which was final
  AnImmutable anotherImmutable = AnImmutable(4);
  
  
  //AnImmutable.mycConstant = 'Anything else'; // error
  // Constant variables can't be assigned a value.
  
  print(AnImmutable.mycConstant); 
  
  print(anImmutable.myFinal); // 2
  print(anotherImmutable.myFinal); //4
  
  print(anImmutable.myDate);
  
  /**
   A Constant String
   2
   4
   2022-03-08 08:20:13.398 
  */
  
}

class AnImmutable {
  static const String mycConstant = 'A Constant String';
  final int myFinal; // at present it is not set so it will change later
  // final String myFinalString;
  
  final myDate = DateTime.now();
  
  AnImmutable(this.myFinal);
  
  
}
 */
