import 'package:flutter/material.dart';
import 'package:flutter_guide_app/result.dart';
import './quiz.dart';
import './result.dart';

/* void main(){
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 9},
        {'text': 'Pink', 'score': 7},
        {'text': 'Orange', 'score': 8},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favorite Animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Lion', 'score': 6},
        {'text': 'Elephant', 'score': 7},
        {'text': 'Tiger', 'score': 8},
      ],
    },
    {
      'questionText': 'Who is your best Teacher?',
      'answers': [
        {'text': 'DRS', 'score': 10},
        {'text': 'HMS', 'score': 9},
        {'text': 'CB', 'score': 9},
        {'text': 'KN', 'score': 9},
        {'text': 'CS', 'score': 7},
        {'text': 'NS', 'score': 9},
      ],
    },
    {
      'questionText': 'Who is your best Friends?',
      'answers': [
        {'text': 'Somashekhar', 'score': 10},
        {'text': 'Anu', 'score': 10},
        {'text': 'Suchithra', 'score': 10},
        {'text': 'All Others', 'score': 8},
      ],
    },
    {
      'questionText': 'What\'s your Strengths',
      'answers': [
        {'text': 'Innovater', 'score': 8},
        {'text': 'TeamLeader/TeamPlayer', 'score': 8},
        {'text': 'GoalOriented', 'score': 8},
        {'text': 'Hardworker', 'score': 10},
        {'text': 'Focused', 'score': 10},
      ],
    },
  ];
  int _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    // print('Answer Choosen!!');
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No More Questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Question & Answer App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
