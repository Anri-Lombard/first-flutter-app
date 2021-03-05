import 'package:flutter/material.dart';

import './output.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _nextText() {
    setState(() {
      _questionIndex == 1 ? _questionIndex = 0 : _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _text = [
      {'text': 'This is the text before anything happens'},
      {'text': 'This is actually the second test'},
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("This is my assignment"),
      ),
      body: Center(
        child: Output(
          text: _text,
          switchScreen: _nextText,
          questionIndex: _questionIndex,
        ),
      ),
    ));
  }
}
