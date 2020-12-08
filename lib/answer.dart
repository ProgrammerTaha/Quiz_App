import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String textAnswer;
  Answer(this.selectHandler, this.textAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandler,
        child: Text(textAnswer),
      ),
    );
  }
}
