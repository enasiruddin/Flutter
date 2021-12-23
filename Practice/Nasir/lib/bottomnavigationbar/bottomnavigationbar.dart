import 'package:flutter/material.dart';
import 'package:tasfia/practicedisplaylist/practiceuser_display.dart';
import 'package:tasfia/tabbar/tabbarclass.dart';

class BottomNavigationBarClass extends StatefulWidget {
  const BottomNavigationBarClass({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarClassState createState() => _BottomNavigationBarClassState();
}

class _BottomNavigationBarClassState extends State<BottomNavigationBarClass> {
  var _curIndex=0;
  List _curPage= [
    // 'Home',
    // 'Menu'
    DisplyClass(),
    TabBarClass(),
  ];

  void OnItemChanged(int index){
  setState(() {
    _curIndex = index;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom NavigationBar"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curIndex,
        selectedIconTheme: IconThemeData(
          color: Colors.red,
          size: 50,
        ),
        backgroundColor: Colors.amberAccent,
        onTap: OnItemChanged,
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
      body:
      _curPage[_curIndex],
      // Center(
      //   child: Text(_curPage[_curIndex]),
      // ),
    );
  }


}
