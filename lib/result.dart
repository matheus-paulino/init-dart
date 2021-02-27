import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int points;

  Result(this.points);

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
    return new Center(
      child: Text(
        textCongratulations,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
