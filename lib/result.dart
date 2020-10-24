import 'package:flutter/material.dart';
import './constants.dart' as constants;

class Result extends StatelessWidget {
  final int _totalScore;
  final Function _resetHandler;

  Result(this._totalScore, this._resetHandler);

  String get _finalVerdict {
    var resultText = 'You have finished the quiz!';
    if (_totalScore == 40)
      resultText = 'Are you God or something?';
    else if (_totalScore >= 36)
      resultText = 'You have damn fine taste. Pucci approved.';
    else if (_totalScore >= 32)
      resultText = 'Okish I guess?';
    else
      resultText = 'Have you rejected your humanity???';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Your score is $_totalScore!\n$_finalVerdict',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: constants.TEXT_COLOR,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            onPressed: _resetHandler,
            child: Text(
              'Reset',
							style: TextStyle(color: constants.TEXT_COLOR, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
