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
        'answers': ['black', 'white', 'pink', 'orange','red'],
      },
      {
        'questionText': 'What\'s your favorite Animal?',
        'answers': ['Rabbit', 'Lion', 'Elephant', 'Parrot'],
      },
      {
        'questionText': 'Who is your best Teacher?',
        'answers': ['DR Suresh', 'Shashikala', 'Basavaraju', 'KN Sir'],
      },
      {
        'questionText': 'Who is your best Friend?',
        'answers': ['Somashekhar', 'Anu', 'Suchithra', 'all'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Question & Answer'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'],
              ),

              ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
                return Answer(_answerQuestion,answer);
              }).toList()
             
            ],
          )),
    );
  }
}
