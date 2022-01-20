import 'package:flutter/material.dart';

class FinalResult extends StatelessWidget {
  final int _totalResult;
  final Function _resetGame;
  FinalResult(this._totalResult, this._resetGame);

  @override
  Widget build(BuildContext context) {
     String resultImg = _totalResult >= 15 ? 'welldone' : 'badscore';
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(50),
            child: Image.asset(
              'images/$resultImg.png',
              width: 250,
              height: 200,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'GAME OVER',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.tealAccent,
                        width: 6.0,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      '$_totalResult',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        fontFamily: 'Lobster',
                        color: Colors.tealAccent,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                     border: Border.all(
                       color: Colors.white,
                       width: 2.0,
                     ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: RaisedButton(
                      child: Text(
                        'RESTART',
                        style: TextStyle(
                          fontFamily: 'Lobster',
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent,
                        ),
                      ),
                      color: Colors.teal,
                      onPressed: (){
                        _resetGame();
                      },
                      elevation: 5,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}