import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>>  questions;
  final Function answerQuestion;
  final int questionIndex;

  const Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer){
          return Answer(() => answerQuestion(answer['score']), answer['text'].toString());
        }).toList(),
      ],
    );
  }
}