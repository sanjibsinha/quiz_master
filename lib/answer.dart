import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      margin: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: pointToOnPress,
        child: Text(
          answer,
          style: GoogleFonts.langar(
            textStyle: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
