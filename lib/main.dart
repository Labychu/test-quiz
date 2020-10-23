import "package:flutter/material.dart";
import './question.dart';
import './answer.dart';
import './constants.dart' as constants;

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
	static const questions = const [
    {
      'questionText': 'What\'s your favourite JoJo Stand?',
      'answers': ['Dragon\'s Dream', 'King Crimson', 'Civil War', 'D\$C'],
    },
    {
      'questionText': 'What\'s your favourite JoJo part?',
      'answers': ['Part 3', 'Part 6', 'Part 7', 'part 4'],
    },
    {
      'questionText': 'Who\'s your favourite JoJo?',
      'answers': ['Jotaro', 'Jolyne', 'Joseph', 'Johny'],
    },
    {
      'questionText': 'Who\'s your favourite Jobro?',
      'answers': ['Okuyasu', 'Bucciarati', 'Gyro', 'Ceasar'],
    },
	];

  void _optionChosen() {
    setState(() {
      _questionIndex++;
    });
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: constants.THEME_COLOR_1,
        appBar: AppBar(
          backgroundColor: constants.THEME_COLOR_2,
          title: Text("ZA WARUDO!"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(answer, _optionChosen);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
