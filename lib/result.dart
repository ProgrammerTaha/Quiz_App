import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are awesome!';
    } else if (totalScore <= 12) {
      resultText = 'Pretty likable';
    } else if (totalScore <= 16) {
      resultText = 'You are ... strange!';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text(
              'Restart Quiz',
            ),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
