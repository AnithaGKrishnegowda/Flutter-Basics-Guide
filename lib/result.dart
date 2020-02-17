import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore > 40) {
      resultText = '$resultScore out of 50 You are awesome and Innocent!!';
    } else if (resultScore >= 30) {
      resultText = 'Pretty Likable';
    } else if (resultScore >= 25) {
      resultText = 'Average';
    } else {
      resultText = 'You\'re bad';
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
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              textColor: Colors.blue,
              onPressed: resetHandler,
              child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
