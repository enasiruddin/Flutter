import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_riddles/options.dart';

import 'final_result.dart';
import 'start_game.dart';

class Homepage extends StatefulWidget {
  //const Homepage({Key? key}) : super(key: key);
  String? title;
  Homepage(this.title);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _isStart = false;
  bool _isCorrectAnswer = true;

  int _firstNum = 0;
  int _secondNum = 0;
  int _answer = 0;

  int _totalScore = 0;
  int _timeOut = 5;
  late Timer _timer;


  List<int> _optionListPositionArr = [];
  int _answerPosition = 0;

  var _randomOptions ;

  int _generateRandomFalseOption(List<int> _optionList){
    int _randomFalseOption = Random().nextInt(11) + Random().nextInt(11);
    if(_optionList.contains(_randomFalseOption)){
       _randomFalseOption = _generateRandomFalseOption(_optionList);
    }
    return _randomFalseOption;
  }

  void _generateOptions(){
    _firstNum = Random().nextInt(11);
    _secondNum = Random().nextInt(11);
    _answer = _firstNum + _secondNum;

    _optionListPositionArr = [0,1,2,3];
    _answerPosition = Random().nextInt(4);
    _optionListPositionArr.remove(_answerPosition);

    List<int> _OptionList = [_answer];

    for(int i = 0 ; i<3 ; i++){
       int _falseRandomOption = _generateRandomFalseOption(_OptionList);
       _OptionList.add(_falseRandomOption);
    }

    _randomOptions = {
      _answerPosition : _OptionList[0],
      _optionListPositionArr[0]  : _OptionList[1],
      _optionListPositionArr[1]  : _OptionList[2],
      _optionListPositionArr[2]  : _OptionList[3],
    };
  }


  void _startGame() {
    _generateOptions();
    setState(() {
      _isStart = true;
    });
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      print(timer.tick);
      setState(() {
        _timeOut--;
      });

      if (_timeOut <= 0) {
        setState(() {
          _isCorrectAnswer = false;
        });
        _timer.cancel();
      }
    });

  }

  void _answerChoosenHandeler (int _answerChoose){
    _timer.cancel();
    if (_answerChoose == _answer) {
      _startGame();
      setState(() {
        _timeOut = 5;
        _totalScore++;
      });
    }else {
      setState(() {
        _isCorrectAnswer = false;
      });
    }
  }

  void _resetGameHandler() {
    setState(() {
      _totalScore = 0;
      _isCorrectAnswer = true;
      _isStart = true;
      _timeOut = 5;
    });
    _startGame();
  }

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('${widget.title}'),
        centerTitle: true,
      ),
      body: _isCorrectAnswer ? (_isStart?  ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Theme.of(context).primaryColor,
                    width: size.width*0.2,
                    child: Text('$_timeOut s', style: TextStyle(fontSize: size.width*0.05, color: Colors.white), textAlign: TextAlign.center,),
                  ),
                ),
                Text('$_firstNum + $_secondNum = ?',style: TextStyle(fontSize: size.width*0.08, color: Colors.white),textAlign: TextAlign.center,),
                Card(
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Theme.of(context).primaryColor,
                    width: size.width*0.2,
                    child: Text('$_totalScore', style: TextStyle(fontSize: size.width*0.05, color: Colors.white),textAlign: TextAlign.center,),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Options(_randomOptions, _answerChoosenHandeler),
          ),
        ],
      ) : StartGame(_startGame)) : FinalResult(_totalScore, _resetGameHandler),
    );
  }
}
