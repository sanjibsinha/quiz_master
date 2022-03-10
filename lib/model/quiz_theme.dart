import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// In a custom theme page we have described color and fonts
/// We may add more custom theme-features later
///

class QuizTheme {
  static const Color primaryColor = Color(0xFF409B25);
  static const Color scaffoldBackgroundColor = Color(0xFF2C6F2E);
  static const Color appBarBackgroundColor = Color(0xFF2C6F2E);
  static const Color boxDecorationColor = Color(0xFFC5DA28);
  static const Color elevatedButtonPrimaryColor = Color(0xFF3C9415);
  static const Color dividerColor = Color(0xFFD9DB26);
  static const correctAnswerColor = Color(0xFFFACAFA);
  static const questionTextColor = Color(0xFFF8E1F8);
  static const answerColor = Color(0xFFFFFFFF);

  static TextStyle answerStyle = GoogleFonts.langar(
    textStyle: const TextStyle(
      color: QuizTheme.answerColor,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  );

  static TextStyle questionStyle = GoogleFonts.laila(
    textStyle: const TextStyle(
      color: QuizTheme.questionTextColor,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    ),
  );
}
