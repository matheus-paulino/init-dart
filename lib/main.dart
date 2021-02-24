import 'package:flutter/material.dart';

import './question.dart';

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
            new RaisedButton(
              child: new Text('Reposta 01'),
              onPressed: _response,
            ),
            new RaisedButton(
              child: new Text('Reposta 02'),
              onPressed: _response,
            ),
            new RaisedButton(
              child: new Text('Reposta 03'),
              onPressed: _response,
            ),
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
