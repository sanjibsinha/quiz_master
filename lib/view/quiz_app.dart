import 'package:flutter/material.dart';

import '../model/quiz_theme.dart';
import 'quiz_page.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playxis - Play + Lexis',
      theme: ThemeData.dark().copyWith(
        primaryColor: QuizTheme.primaryColor,
        scaffoldBackgroundColor: QuizTheme.scaffoldBackgroundColor,
      ),
      home: const QuizPage(),
    );
  }
}
