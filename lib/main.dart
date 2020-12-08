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
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        'Black',
        'white',
        'red',
        'green',
      ],
    },
    {
      'questionText': 'What\'s your favorite laptop?',
      'answers': [
        'acer',
        'dell',
        'apple',
        'samsung',
      ],
    },
    {
      'questionText': 'What\'s your favorite book?',
      'answers': [
        'paper-book & new',
        'e-book & old',
        'paper-book & old',
        'e-book & new',
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        'cat',
        'dog',
        'chicken',
        'horse',
      ],
    }
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
            : Result(),
      ),
    );
  }
}
