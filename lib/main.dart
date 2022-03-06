import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(const Mathematico());
}

class Mathematico extends StatelessWidget {
  const Mathematico({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Quiz',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MathematicoHome(),
    );
  }
}

class MathematicoHome extends StatefulWidget {
  const MathematicoHome({Key? key}) : super(key: key);

  @override
  State<MathematicoHome> createState() => _MathematicoHomeState();
}

class _MathematicoHomeState extends State<MathematicoHome> {
  Mathematico mathematico = const Mathematico();

  List<Text> check = [];

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
                  '',
                  style: GoogleFonts.lalezar(
                    textStyle: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              getButton('Above Equation is Correct', true),
              getButton('Above Equation is Wrong', false),
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
          setState(() {});
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
// as such nothing has been changed

/**
 * 
 */