import 'package:flutter/material.dart';
import '../model/quiz_theme.dart';

class Answer extends StatelessWidget {
  const Answer({
    Key? key,
    required this.answer,
    required this.pointToOnPress,
  }) : super(key: key);

  final String answer;
  final VoidCallback pointToOnPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: pointToOnPress,
        style: ElevatedButton.styleFrom(
          primary: QuizTheme.elevatedButtonPrimaryColor,
        ),
        child: Text(
          answer,
          style: QuizTheme.answerStyle,
        ),
      ),
    );
  }
}
