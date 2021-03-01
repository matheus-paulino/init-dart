import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int points;
  final void Function() onResetQuiz;

  Result(
    this.points,
    this.onResetQuiz,
  );

  String get textCongratulations {
    if (points < 8) {
      return 'Parabéns!';
    } else if (points < 12) {
      return 'Você é bom';
    } else if (points < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedí';
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        new Center(
          child: Text(
            textCongratulations,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        FlatButton(
          child: Text(
            'Reiniciar',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          textColor: Colors.blue,
          onPressed: onResetQuiz,
        )
      ],
    );
  }
}
