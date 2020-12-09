import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'red',
          'score': 5,
        },
        {
          'text': 'green',
          'score': 3,
        },
        {
          'text': 'white',
          'score': 1,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {
          'text': 'Rabbit',
          'score': 10,
        },
        {
          'text': 'Snake',
          'score': 5,
        },
        {
          'text': 'Elephant',
          'score': 3,
        },
        {
          'text': 'Lion',
          'score': 1,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {
          'text': 'Max',
          'score': 10,
        },
        {
          'text': 'Max',
          'score': 5,
        },
        {
          'text': 'Max',
          'score': 3,
        },
        {
          'text': 'Max',
          'score': 1,
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore),
      ),
    );
  }
}
