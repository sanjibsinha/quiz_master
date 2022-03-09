import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Playxis - Play + Lexis',
      home: QuizPage(),
    );
  }
}

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
    if (index == questions.length) {
      index = 0;
    }
  }

  var questions = [
    {
      'question': 'Who are you?',
      'answer': [
        'Robot',
        'Human',
        'Alien',
      ],
    },
    {
      'question': 'What is your name?',
      'answer': [
        'Robu',
        'Honu',
        'Alu',
      ],
    },
    {
      'question': 'What do you eat?',
      'answer': [
        'Electricity',
        'Everything',
        'Water of Mars',
      ],
    },
    {
      'question': 'What do you want?',
      'answer': [
        'Follow the instruction',
        'Go to war and destroy.',
        'Go back to Mars.',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Playxis - Play + Lexis',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Question(questions: questions, index: index),
            ...(questions[index]['answer'] as List<String>).map((answer) {
              return Answer(answer: answer, pointToOnPress: increment);
            }).toList(),
          ],
        ),
      ),
    );
  }
}



/**
 * Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${questions[index]['question']}'),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: increment,
                child: const Text('Answer 1'),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: increment,
                child: const Text('Answer 2'),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: increment,
                child: const Text('Answer 3'),
              ),
            ),            
          ],
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Question(questions: questions, index: index),
            Answer(answer: 'Answer 1', pointToOnPress: increment),
            Answer(answer: 'Answer 2', pointToOnPress: increment),
            Answer(answer: 'Answer 3', pointToOnPress: increment),
          ],
        ),
 */