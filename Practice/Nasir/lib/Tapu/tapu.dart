import 'package:flutter/material.dart';
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tapu Debnath"),

      ),
      body: Container(
        child: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Stack(
            children: [
              // Max Size
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.pink,
                height: 400.0,
                width: 300.0,
              ),
              Container(
                color: Colors.yellow,
                height: 220.0,
                width: 200.0,
              )
            ],
          ),
        ),
      ),
    );

  }
}
