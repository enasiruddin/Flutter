import 'package:flutter/material.dart';
import 'package:koukicons/play2.dart';

class StartGame extends StatelessWidget {
  final Function _startGame;
  StartGame(this._startGame);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.symmetric(vertical: 40),
          child: Image.asset('images/welcome.png'),
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            'Welcome, What are you looking for? Press PLAY button and check how good you are in MATH :)',
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 20,
              color: Colors.tealAccent,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: GestureDetector(
            child: KoukiconsPlay2(
              height: 150,
              width: 150,
            ),
            onTap: _startGame(),
          ),
        )
      ],
    );
  }
}