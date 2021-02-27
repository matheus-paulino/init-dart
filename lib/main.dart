import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

main() {
  runApp(new AskApp());
}

class QuestionAppState extends State<AskApp> {
  int _askSelected = 0;
  int _totalPoints = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'question': 'Qual é sua cor favorita?',
      'reponses': [
        {'text': 'Preto', 'points': 8},
        {'text': 'Vermelho', 'points': 9},
        {'text': 'Verde', 'points': 10},
        {'text': 'Branco', 'points': 7},
      ],
    },
    {
      'question': 'Qual é seu animal favorito?',
      'reponses': [
        {'text': 'Cachorro', 'points': 5},
        {'text': 'Girafa', 'points': 0},
        {'text': 'Gato', 'points': 9},
        {'text': 'Passáro', 'points': 1},
      ],
    }
  ];

  void _response(int points) {
    if (hasQuestionSelected) {
      setState(() {
        _askSelected++;
        _totalPoints += points;
      });

      print(_totalPoints);
    }
  }

  bool get hasQuestionSelected {
    return _askSelected < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    /* List<Widget> answersWidgets =
        responses.map((r) => Answer(r, _response)).toList(); */
    /* for (String questionAnswer in responses) {
      answersWidgets.add(Answer(questionAnswer, _response));
    } */

    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: Text('Questions'),
          ),
          body: hasQuestionSelected
              ? Quiz(
                  questions: _questions,
                  answerSelected: _askSelected,
                  onAnswer: _response,
                )
              : Result(_totalPoints)),
    );
  }
}

class AskApp extends StatefulWidget {
  QuestionAppState createState() {
    return new QuestionAppState();
  }
}
