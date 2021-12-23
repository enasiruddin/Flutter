import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Culomns extends StatefulWidget {
  const Culomns({Key? key}) : super(key: key);

  @override
  _CulomnsState createState() => _CulomnsState();
}

class _CulomnsState extends State<Culomns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Culomns'),
        ),
        body: Center(
            child: Stack(overflow: Overflow.visible, children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.lightGreen,
          ),
          Positioned(
            left: 200,
            bottom: 200,
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(500)),
            ),
          )
        ])));
  }
}
