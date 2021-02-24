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
        'question': 'Qual é seu cantor favorito?',
        'reponses': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'question': 'Qual é seu animal favorito?',
        'reponses': ['Cachorro', 'Girafa', 'Gato', 'Passáro'],
      }
    ];

    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Questions'),
        ),
        body: new Column(
          children: <Widget>[
            new Question(questions[_askSelected]['question']),
            new Answer('Answer 01', _response),
            new Answer('Answer 02', _response),
            new Answer('Answer 03', _response),
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
