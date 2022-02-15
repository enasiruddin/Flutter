import 'package:flutter/material.dart';
import 'package:math_riddles/homepage.dart';

class Starting_Page extends StatefulWidget {
  // const Starting_Page({Key? key}) : super(key: key);
  String? title;

  Starting_Page(this.title);

  @override
  _Starting_PageState createState() => _Starting_PageState();
}

class _Starting_PageState extends State<Starting_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          LevelCard("Level 1 (0-9)", 10),
          LevelCard("Level 2 (10-19)", 20),
          LevelCard("Level 3 (20-29)", 30),
          LevelCard("Level 4 (30-39)", 40),
          LevelCard("Level 5 (40-49)", 50),
          LevelCard("Level 6 (50-59)", 60),
          LevelCard("Level 7 (60-69)", 70),
          LevelCard("Level 8 (70-79)", 80),
          LevelCard("Level 9 (80-89)", 90),
          LevelCard("Level 10 (91-99)", 100),
        ],
      ),

    );
  }

  Widget LevelCard(String title, int max){
    return Container(
      width: 20,
      height: 80,
      child: Card(
        elevation: 4,
        child: RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage(title, max)));
          },
          child: Text(title, style: TextStyle(fontSize: 18),),
        ),
      ),
    );
  }
}
