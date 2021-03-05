import 'package:flutter/material.dart';

class Output extends StatelessWidget {
  List<Map<String, Object>> text;
  Function switchScreen;
  int questionIndex;

  Output(
      {@required this.text,
      @required this.switchScreen,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            text[questionIndex]['text'],
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Next"),
            onPressed: switchScreen,
          ),
        ],
      ),
    );
  }
}
