import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetQuiz;

  const Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (resultScore < 10){
      resultText = 'you get less than 10';
    } else if(resultScore <= 12) {
      resultText = 'you get <= 12';
    } else if (resultScore <= 16) {
      resultText = 'you get <= 16';
    } else {
      resultText = 'you are in the else';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),        
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetQuiz,
          ),
        ],
      )
    );
  }
}