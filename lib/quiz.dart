import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerquestions;
  final int index;

  Quiz({
    @required this.questions,
    @required this.answerquestions,
    @required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[index]['questionText'] as String,
        ),
        ...(questions[index]['answers'] as List<Map<String, Object> > )
            .map((answers) {
          return Answer(() => answerquestions(answers['score']),
              answers['text'] as String);
        }).toList()
      ],
    );
  }
}


