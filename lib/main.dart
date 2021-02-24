import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

main() {
  runApp(new AskApp());
}

class QuestionAppState extends State<AskApp> {
  int _askSelected = 0;

  void _response() {
    setState(() {
      _askSelected++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
      {
        'question': 'Qual é sua cor favorita?',
        'reponses': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'question': 'Qual é seu animal favorito?',
        'reponses': ['Cachorro', 'Girafa', 'Gato', 'Passáro'],
      }
    ];

    List<String> responses = questions[_askSelected]['reponses'];
    List<Widget> answersWidgets =
        responses.map((r) => Answer(r, _response)).toList();
    /* for (String questionAnswer in responses) {
      answersWidgets.add(Answer(questionAnswer, _response));
    } */

    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Questions'),
        ),
        body: new Column(
          children: <Widget>[
            new Question(questions[_askSelected]['question']),
            ...answersWidgets
          ],
        ),
      ),
    );
  }
}

class AskApp extends StatefulWidget {
  QuestionAppState createState() {
    return new QuestionAppState();
  }
}
