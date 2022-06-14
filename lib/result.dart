import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function reset;
  Result(this.resultscore, this.reset);

  String get resultPhrase {
    String resulttext;
    if (resultscore > 110) {
      resulttext = 'you are pretty awesome';
    } 
    else if (resultscore > 80 && resultscore < 110) {
      resulttext = 'I like it';
    } 
    else if (resultscore > 40 && resultscore < 80) {
      resulttext = 'you are good';
    } 
    else {
      resulttext = 'you are strange!!';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reset,
            child: Text('Restart quiz',),
            textColor: Colors.white,
            color: Colors.blue,
          )
        ],
      ),
    ));
  }
}
