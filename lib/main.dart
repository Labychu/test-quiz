import "package:flutter/material.dart";
import './constants.dart' as constants;
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
	int _totalScore = 0;
  static final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Killer Queen', 'score': 10},
        {'text': 'King Crimson', 'score': 7},
        {'text': 'Made In Heaven', 'score': 9},
        {'text': 'D4C Love Train', 'score': 8},
      ],
    },
    {
      'questionText': 'What\'s your favourite JoJo part?',
      'answers': [
        {'text': 'Part 4', 'score': 7},
        {'text': 'Part 5', 'score': 8},
        {'text': 'Part 6', 'score': 10},
        {'text': 'Part 7', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favourite JoJo?',
      'answers': [
        {'text': 'Josuke', 'score': 7},
        {'text': 'Giorno', 'score': 8},
        {'text': 'Jolyne', 'score': 9},
        {'text': 'Johnny', 'score': 10},
      ],
    },
    {
      'questionText': 'Who\'s your favourite Jobro?',
      'answers': [
        {'text': 'Okuyasu', 'score': 7},
        {'text': 'Bucciarati', 'score': 9},
        {'text': 'Ermes', 'score': 8},
        {'text': 'Gyro', 'score': 10},
      ],
    },
  ];

  void _selectOption(int score) {
		_totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print('Answer chosen!');
  }

	void _resetQuiz() {
		setState(() {
		  _totalScore = 0;
			_questionIndex = 0;
		});
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
        body: (_questionIndex < _questions.length)
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                selectOptionFunction: _selectOption,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
