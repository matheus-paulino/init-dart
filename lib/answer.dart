import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final void Function() onSelected;

  Answer(this.answer, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          child: new RaisedButton(
            child: new Text(answer),
            onPressed: onSelected,
            color: Colors.lightBlueAccent,
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
