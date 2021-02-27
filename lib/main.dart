import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

main() {
  runApp(new AskApp());
}

class QuestionAppState extends State<AskApp> {
  int _askSelected = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'question': 'Qual é sua cor favorita?',
      'reponses': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'question': 'Qual é seu animal favorito?',
      'reponses': ['Cachorro', 'Girafa', 'Gato', 'Passáro'],
    }
  ];

  void _response() {
    if (hasQuestionSelected) {
      setState(() {
        _askSelected++;
      });
    }

    print(_askSelected);
  }

  bool get hasQuestionSelected {
    return _askSelected < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> responses =
        hasQuestionSelected ? _questions[_askSelected]['reponses'] : null;

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
            ? Column(
                children: <Widget>[
                  new Question(_questions[_askSelected]['question']),
                  ...responses.map((t) => Answer(t, _response)).toList()
                ],
              )
            : Center(
                child: Text(
                  'Parabéns!',
                  style: TextStyle(fontSize: 28),
                ),
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
