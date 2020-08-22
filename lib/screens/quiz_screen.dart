import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';
import 'package:quiz/questions_data.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuizScreenState();  
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Map<String, Object>> _questions = questionsData();

  int _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestion (int score) {

    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
        ),
        body: _questionIndex < _questions.length ? 
        Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,): 
        Result(_totalScore, _resetQuiz),
      ),
    );
  }
}