import 'package:flutter/material.dart';

import '../model/constant.dart';
import 'home_page.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playxis - Play + Lexis',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      ),
      home: const MyHomePage(title: 'Playxis - Play + Lexis'),
    );
  }
}
