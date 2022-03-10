import 'package:flutter/material.dart';

import '../model/questions_list.dart';
import '../model/quiz_theme.dart';
import 'question.dart';
import 'answer.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int index = 0;
  void increment() {
    setState(() {
      index = index + 1;
    });
    if (index == questionList.length) {
      index = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Playxis - Play + Lexis',
        ),
        backgroundColor: QuizTheme.appBarBackgroundColor,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Question(questions: questionList, index: index),
            ...(questionList[index]['answer'] as List<String>).map((answer) {
              return Answer(answer: answer, pointToOnPress: increment);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
