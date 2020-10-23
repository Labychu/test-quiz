import 'package:flutter/material.dart';
import './constants.dart' as constants;


class Answer extends StatelessWidget {
  final Function selected;
  final String answerText;

  Answer(this.answerText ,this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: constants.THEME_COLOR_2,
        textColor: constants.TEXT_COLOR,
        child: Text(answerText), 
        onPressed: selected,
      ),
    );
  }
}