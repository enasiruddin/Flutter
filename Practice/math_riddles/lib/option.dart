import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final int _optionvalue;
  final Function _answerChoosenHandler;
  Option(this._optionvalue, this._answerChoosenHandler);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _answerChoosenHandler(_optionvalue),
      child: Card(
        color: Colors.teal,
        elevation: 5,
        child: Center(
          child: Text(
            '$_optionvalue',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}