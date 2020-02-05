import 'package:flutter/material.dart';

/* void main(){
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion(){
    print('Answer Choosen!!');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('This is AppBar'),
          ),
          body: Column(
            children: [
              Text('The Questions!!'),
              RaisedButton(
                child: Text('Answer1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer2'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer3'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer4'),
                onPressed: null,
              ),
            ],
          )),
    );
  }
}
