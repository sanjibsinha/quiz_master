import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/question_widget.dart';
import '../model/constant.dart';
import '../model/questions_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _correctAnswer = 'Choose your correct answer!';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    if (_counter == 0) {
      _correctAnswer = 'Choose your correct answer!';
    } else if (_counter == 1) {
      _correctAnswer = 'Synonym of Mendacity was: Falsehood';
    } else if (_counter == 2) {
      _correctAnswer = 'Synonym of Culpable was: Guilty';
    } else {
      _counter = 0;
      _correctAnswer = 'Synonym of Rapacious was: Greedy';
    }
  }

  @override
  Widget build(BuildContext context) {
    var questions = questionList;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: appBarBackgroundColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 5.0,
              ),
              child: Text(
                'Play with Lexis, which means words.'
                ' Here are synonyms of most difficult 200 words in English.'
                ' Play with them everyday for a few minutes.'
                ' They will never leave you! Remember and use them forever.',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    color: correctAnswerColor,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            QuestionWidget(questions: questions, counter: _counter),
            ...(questions[_counter]['answers'] as List<String>)
                .map(
                  (answer) => buildButtonInsideContainer(answer),
                )
                .toList(),
            const SizedBox(
              height: 16.0,
              width: 60.0,
              child: Divider(
                color: dividerColor,
                thickness: 2.0,
              ),
            ),
            Text(
              _correctAnswer,
              style: GoogleFonts.lacquer(
                textStyle: const TextStyle(
                  color: correctAnswerColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Container buildButtonInsideContainer(String answer) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: elevatedButtonPrimaryColor,
        ),
        onPressed: _incrementCounter,
        child: Text(
          answer,
          style: GoogleFonts.laila(
            textStyle: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
