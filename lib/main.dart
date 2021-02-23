import 'package:flutter/material.dart';

main() {
  runApp(new AskApp());
}

@override
class AskApp extends StatelessWidget {
  void response() {
    print('Pergunta respondida');
  }

  final List<String> questions = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito'
  ];

  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Questions'),
        ),
        body: new Column(
          children: <Widget>[
            new Text(questions[0]),
            new RaisedButton(
              child: new Text('Reposta 01'),
              onPressed: response,
            ),
            new RaisedButton(
              child: new Text('Reposta 02'),
              onPressed: response,
            ),
            new RaisedButton(
              child: new Text('Reposta 03'),
              onPressed: response,
            ),
          ],
        ),
      ),
    );
  }
}
