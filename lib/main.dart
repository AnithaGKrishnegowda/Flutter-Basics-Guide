import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    // print('Answer Choosen!!');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = const [
      {
        'questionText': 'What\'s your favorite Color?',
        'answers': ['Black', 'White', 'Pink', 'Orange','Red','Green'],
      },
      {
        'questionText': 'What\'s your favorite Animal?',
        'answers': ['Rabbit', 'Lion', 'Elephant', 'Parrot'],
      },
      {
        'questionText': 'Who is your best Teacher?',
        'answers': ['DR Suresh sir', 'Shashikala sir', 'Basavaraju sir', 'KN sir','Chamayya sir','Puttaswamy sir','NS Sir'],
      },
      {
        'questionText': 'Who is your best Friends?',
        'answers': ['Somashekhar', 'Anu', 'Suchithra', 'All Others'],
      },
      {
        'questionText': 'What\'s your Strengths',
        'answers': ['Innovater', 'TeamLeader/TeamPlayer', 'GoalOriented', 'Hardworker','Focused'],
      },
      {
        'questionText': 'What\'s your Weakness',
        'answers': ['Can\'t say NO to anyone', 'Being too Good'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Question & Answer App'),
          ),


body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/images/goal.jpg',
             
              fit: BoxFit.fill,
            ),
          ),


           Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'],
              ),

              ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
                return Answer(_answerQuestion,answer);
              }).toList()
             
            ],
          ),
           ],
          ),
       
      ),
    );
  }
}
