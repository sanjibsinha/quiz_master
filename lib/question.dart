import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  const Question({Key? key, required this.questions, required this.index})
      : super(key: key);
  final List<Map<String, Object>> questions;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: Text(
        '${questions[index]['question']}',
        textAlign: TextAlign.center,
        style: GoogleFonts.laila(
          textStyle: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
