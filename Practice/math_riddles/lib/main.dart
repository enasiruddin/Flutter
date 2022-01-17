import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import './start_game.dart';
import './options.dart';
import './final_result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   // MyHomePage({Key key,  this.title}) : super(key: key);

  String title = "Sharp Your Brain";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isStart = false;
  bool _isCorrectAnswer = true;

  int _firstNum = 0;
  int _secondNum = 0 ;
  int _answer = 0 ;

  int _totalScore = 0;
  int _timeout = 5;
  Timer? _timer;

  List<int>? _optionListPositionArr;
  int? _answerPosition;

  var _randomOptions;

  int _generateRandomFalseOption(List<int> _optionList) {
    int _randomFalseOption = Random().nextInt(11) + Random().nextInt(11);

    if (_optionList.contains(_randomFalseOption)) {
      _randomFalseOption = _generateRandomFalseOption(_optionList);
    }

    return _randomFalseOption;
  }

  void _generateOptions() {
    _firstNum = Random().nextInt(11);
    _secondNum = Random().nextInt(11);
    _answer = _firstNum +  _secondNum;

    _optionListPositionArr = [0, 1, 2, 3];
    _answerPosition = Random().nextInt(4);
    _optionListPositionArr!.remove(_answerPosition);

    List<int> _optionList = [_answer];

    for (int i = 0; i < 3; i++) {
      int _falseRandomOption = _generateRandomFalseOption(_optionList);
      _optionList.add(_falseRandomOption);
    }

    _randomOptions = {
      _answerPosition: _optionList[0],
      _optionListPositionArr[0]: _optionList[1],
      _optionListPositionArr[1]: _optionList[2],
      _optionListPositionArr[2]: _optionList[3],
    };
  }

  void _startGame() {
    _generateOptions();

    setState(() {
      _isStart = true;
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _timeout--;
      });

      if (_timeout <= 0) {
        setState(() {
          _isCorrectAnswer = false;
        });
        _timer!.cancel();
      }
    });
  }

  void _answerChoose(int _chosenAnswer) {
    if (_chosenAnswer == _answer) {
      _generateOptions();

      setState(() {
        _timeout = 5;
        _totalScore++;
      });
    } else {
      setState(() {
        _isCorrectAnswer = false;
      });
      _timer!.cancel();
    }
  }

  void _resetGameHandler() {
    setState(() {
      _totalScore = 0;
      _isCorrectAnswer = true;
      _isStart = true;
      _timeout = 5;
    });

    _startGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: _isCorrectAnswer
          ? (_isStart
          ? Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  color: Colors.teal,
                  elevation: 5,
                  child: Container(
                    width: 70,
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '${_timeout}s',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Text(
                  '$_firstNum + $_secondNum',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Card(
                  color: Colors.teal,
                  elevation: 5,
                  child: Container(
                    width: 70,
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '$_totalScore',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Options(_randomOptions, _answerChoose)
        ],
      )
          : StartGame(_startGame))
          : FinalResult(_totalScore, _resetGameHandler),
    );
  }
}