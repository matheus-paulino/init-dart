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
    print(_askSelected);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito'
    ];

    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Questions'),
        ),
        body: new Column(
          children: <Widget>[
            new Question(questions[_askSelected]),
            new Answer('Answer 01'),
            new Answer('Answer 02'),
            new Answer('Answer 03'),
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
