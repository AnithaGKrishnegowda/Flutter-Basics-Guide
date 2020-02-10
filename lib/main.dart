import 'package:flutter/material.dart';

/* void main(){
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

      @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {


  int questionIndex =0;

  void answerQuestion(){
    setState(() {
         questionIndex=questionIndex+1;

    });
  
   // print('Answer Choosen!!');
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
            title: Text('Question & Answer'),
            
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
