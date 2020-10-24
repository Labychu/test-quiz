import 'package:flutter/material.dart';
import './constants.dart' as constants;

class Answer extends StatelessWidget {
  final Function _selected;
  final String _answerText;

  Answer(this._answerText, this._selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: constants.THEME_COLOR_2,
        textColor: constants.TEXT_COLOR,
        child: Text(_answerText),
        onPressed: _selected,
      ),
    );
  }
}
