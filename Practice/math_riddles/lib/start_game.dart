import 'package:flutter/material.dart';

class StartGame extends StatelessWidget {
   final Function _startGame;
   StartGame(this._startGame);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
       // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size.width,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.symmetric(vertical: 40),
          child: Image.asset('images/welcome.png'),
          height: 200,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Welcome. What are you looking for? Press Play button and check how good you are in MATH.",
            style: TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        GestureDetector(
          onTap: (){
            _startGame();
          },
          child: Container(
            child: Icon(Icons.play_arrow_outlined, size: 120,),
          ),
        ),
      ],
    );
  }
}