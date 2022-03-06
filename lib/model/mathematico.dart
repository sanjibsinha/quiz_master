class Mathematico {
  String question;
  bool answer;

  Mathematico(this.question, this.answer);
}

class QuizMaster {
  int _index = 0;

  final List<Mathematico> _mathematico = [
    Mathematico('29 + 5 = 34', true),
    Mathematico('71 - 4 = 66', false),
    Mathematico('51 - 9 = 41', false),
    Mathematico('78 + 6 = 84', true),
  ];

  void nextQuestion() {
    if (_index == _mathematico.length - 1) {
      _index++;
    }
  }

  int getIndex() {
    return _index;
  }

  String getQuestion() {
    return _mathematico[_index].question;
  }

  bool getAnswer() {
    return _mathematico[_index].answer;
  }
}
