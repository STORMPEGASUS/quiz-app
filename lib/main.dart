// ignore_for_file: deprecated_member_use, avoid_print, unused_import



import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
    _questionindex = 0;
    _totalscore = 0;
      
    });
  }

  void _answerQuestion(int score) {
    _totalscore += score;

    setState(() {
      _questionindex = _questionindex + 1;
    });
    print(_questionindex);
  }

  @override // we overrided the function deliberately
  Widget build(BuildContext context) {
    var _question = [
      {
        'questionText': 'What\'s your favorite Drama ?',
        'answers': [
          {'text': 'Happiness', 'score': 50},
          {'text': 'Its\'s okay not to be okay', 'score': 20},
          {'text': 'All of us are dead', 'score': 30},
          {'text': 'Crash landing on you', 'score': 40},
        ],
      },
      {
        'questionText': 'What\'s your favorite genre ?',
        'answers': [
          {'text': 'Comedy', 'score': 30},
          {'text': 'Horror', 'score': 40},
          {'text': 'Romantic', 'score': 10},
          {'text': 'Erotic', 'score': 50},
        ],
      },
      {
        'questionText': 'Who\'s your favorite Actress',
        'answers': [
          {'text': 'Han so hee', 'score': 50},
          {'text': 'Seo hye je', 'score': 40},
          {'text': 'Han hyo jo', 'score': 30},
          {'text': 'Nancy Mcdonie', 'score': 50},
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: _questionindex < _question.length
            ? Quiz(
                questions: _question,
                answerquestions: _answerQuestion,
                index: _questionindex,
              )
            : Result(_totalscore,_resetQuiz),
      ),
    );
  }
}
