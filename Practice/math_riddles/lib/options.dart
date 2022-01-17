import 'package:flutter/material.dart';
import './option.dart';

class Options extends StatelessWidget {
  final _randomOptions;
  final Function _answerChoosenHandler;
  Options(this._randomOptions, this._answerChoosenHandler);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Option(_randomOptions[0], _answerChoosenHandler),
        Option(_randomOptions[1], _answerChoosenHandler),
        Option(_randomOptions[2], _answerChoosenHandler),
        Option(_randomOptions[3], _answerChoosenHandler),
      ],
    );
  }
}