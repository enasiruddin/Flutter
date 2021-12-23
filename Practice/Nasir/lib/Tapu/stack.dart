import 'package:flutter/material.dart';
class stack extends StatefulWidget {
  const stack({Key? key}) : super(key: key);

  @override
  _stackState createState() => _stackState();
}

class _stackState extends State<stack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.amberAccent,
        title: Text("My stack"),
              ),
     
      body: Center(
        child: Stack(

         overflow: Overflow.visible,
          children: [
            Container(
              height: 400,
             width: 400,
        color: Colors.green,
            ),
            Positioned(
              left: 90,
             bottom: 100,
              child: Container(
                height: 250,
                width: 250,

                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(500)
                ),
              ),
            ),
            Positioned(
              left: 99,
                top: 90,
                bottom: 70,
                child: Container(
               height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(500),
                  ),
                ),
            ),
            Positioned(
              left: 0,
              bottom: 50,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[90],
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Positioned(
              left: 50,
             bottom: 80,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Positioned(
              left: 80,
              bottom: 70,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Positioned(
              left: 80,
              bottom: 70,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.vertical(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
