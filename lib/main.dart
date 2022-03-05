import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> questions = [
    '29 + 5 = 34',
    '71 - 4 = 66',
    '51 - 9 = 41',
    '78 + 6 = 84',
  ];

  int index = 0;

  List<bool> answers = [
    true,
    false,
    false,
    true,
  ];

  List<Text> check = [];

  void checkAnswer(bool userAnswered) {
    bool correctAnswer = answers[index];
    if (correctAnswer == userAnswered) {
      check.add(const Text('Correct Answer'));
    } else {
      check.add(const Text('Wrong Answer'));
    }
    if (index == answers.length) {
      check.clear();
      Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.")
          .show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'First Quiz',
          style: GoogleFonts.lacquer(
            textStyle: TextStyle(
              color: Colors.purple.shade600,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                alignment: Alignment.center,
                child: Text(
                  questions[index],
                  style: GoogleFonts.lalezar(
                    textStyle: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              getButton('Correct Answer', true),
              getButton('Wrong Answer', false),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: check,
                ),
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Container getButton(String answer, bool corerctOrWrong) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            checkAnswer(corerctOrWrong);
            index++;

            if (index == questions.length) {
              index = 0;
            }
          });
        },
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
