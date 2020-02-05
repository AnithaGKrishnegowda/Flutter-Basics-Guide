import 'package:flutter/material.dart';

/* void main(){
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  int questionIndex =0;

  void answerQuestion(){
   // print('Answer Choosen!!');
   questionIndex=questionIndex+1;
   print(questionIndex);
  }
  @override
  Widget build(BuildContext context) {

var questions = [
  'What\'s your favorite color?',
  'What\'s your favorite animal?'
];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('This is AppBar'),
          ),
          body: Column(
            children: [
              Text(questions[questionIndex]),
              RaisedButton(
                child: Text('Answer1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer2'),
                onPressed: (answerQuestion),
              ),
              RaisedButton(
                child: Text('Answer3'),
                onPressed: ()=> print('ANswer 2 Choosen!!'),
              ),
              RaisedButton(
                child: Text('Answer4'),
                onPressed: () {
                  print('Answer3 Choosen!!!');
                },
              ),
            ],
          )),
    );
  }
}
