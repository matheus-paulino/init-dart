import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int answerSelected;
  final void Function() onAnswer;

  Quiz({
    @required this.questions,
    @required this.answerSelected,
    @required this.onAnswer,
  });

  bool get hasQuestionSelected {
    return answerSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> responses =
        hasQuestionSelected ? questions[answerSelected]['reponses'] : null;

    return new Column(
      children: <Widget>[
        new Question(questions[answerSelected]['question']),
        ...responses.map((t) => Answer(t, onAnswer)).toList()
      ],
    );
  }
}
