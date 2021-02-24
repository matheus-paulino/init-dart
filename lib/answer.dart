import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;

  Answer(this.answer);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new RaisedButton(
          child: new Text(answer),
          onPressed: null,
        ),
      ],
    );
  }
}
