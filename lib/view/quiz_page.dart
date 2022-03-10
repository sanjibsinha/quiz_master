import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../model/questions_list.dart';
import '../model/quiz_theme.dart';
import 'answer.dart';
import 'question.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizMaster quiz = QuizMaster();
  String _correctAnswer = 'Choose your correct answer!';
  int _index = 0;
  void increment() {
    setState(() {
      _index = _index + 1;
    });
    if (_index == quiz.questionList.length + 1) {
      _index = 0;
    }
    if (_index == 0) {
      _correctAnswer = 'Choose your correct answer!';
    } else if (_index == 1) {
      _correctAnswer = 'Synonym of Mendacity was: Falsehood';
    } else if (_index == 2) {
      _correctAnswer = 'Synonym of Culpable was: Guilty';
    } else {
      _index = 0;
      _correctAnswer = 'Choose your correct answer!';
      Alert(
        context: context,
        title: 'Quiz Completed.',
        desc: 'We\'ve reached the end. Thanks for taking part. Meet you again.',
      ).show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Playxis - Play + Lexis',
          style: QuizTheme.appbarStyle,
        ),
        backgroundColor: QuizTheme.appBarBackgroundColor,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Question(questions: quiz.questionList, index: _index),
            ...(quiz.questionList[_index]['answer'] as List<String>)
                .map((answer) {
              return Answer(answer: answer, pointToOnPress: increment);
            }).toList(),
            Container(
              padding: const EdgeInsets.all(5.0),
              width: 250.0,
              child: const Divider(
                thickness: 5.0,
                color: QuizTheme.dividerColor,
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Text(
                _correctAnswer,
                style: QuizTheme.questionStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
