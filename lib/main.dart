import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  int questionIndex = 0;

  List<bool> answers = [
    true,
    false,
    false,
    true,
  ];

  List<Text> check = [];

  void checkAnswer() {
    if (questionIndex == 0) {
      if (answers[questionIndex] == true) {
        check.add(const Text('Correct'));
      } else {
        check.add(const Text('Wrong'));
      }
    }
    if (questionIndex == 1) {
      if (answers[questionIndex] == false) {
        check.add(const Text('Correct'));
      } else {
        check.add(const Text('Wrong'));
      }
    }
    if (questionIndex == 2) {
      if (answers[questionIndex] == false) {
        check.add(const Text('Correct'));
      } else {
        check.add(const Text('Wrong'));
      }
    }
    if (questionIndex == 3) {
      if (answers[questionIndex] == true) {
        check.add(const Text('Correct'));
      } else {
        check.add(const Text('Wrong'));
      }
    }
    if (questionIndex > 3) {
      check.clear();
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
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: Text(
                  questions[questionIndex],
                  style: GoogleFonts.lalezar(
                    textStyle: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              getButton('True'),
              getButton('False'),
              /* Text(
                'data',
                style: GoogleFonts.ledger(
                  textStyle: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ), */
              Row(
                children: check,
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Container getButton(String answer) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            questionIndex++;
            checkAnswer();
            if (questionIndex > 3) {
              questionIndex = 0;
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
