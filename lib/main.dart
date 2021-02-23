import 'package:flutter/material.dart';

main() {
  runApp(new AskApp());
}

@override
class AskApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Questions'),
        ),
        body: Text('Any questions'),
      ),
    );
  }
}
