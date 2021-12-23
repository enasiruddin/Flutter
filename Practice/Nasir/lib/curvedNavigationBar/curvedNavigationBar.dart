import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class CurvedNavigationBarClass extends StatefulWidget {
  const CurvedNavigationBarClass({Key? key}) : super(key: key);

  @override
  _CurvedNavigationBarClassState createState() => _CurvedNavigationBarClassState();
}

class _CurvedNavigationBarClassState extends State<CurvedNavigationBarClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
      ),
      appBar: AppBar(
        title: Text("Curved Navigation Bar"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
