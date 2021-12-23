import 'dart:html';

import 'package:flutter/material.dart';

import 'home.dart';
import 'listview.dart';
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
        title: Text("Login"),

      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [

    TextField(
    decoration: InputDecoration(
    hintText: 'Email',
    helperStyle: TextStyle(color: Colors.blueGrey),
    labelText: 'Email',
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.cyanAccent,
    width: 5,
    )
    ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: BorderSide(
    color: Colors.lightBlue,
    width: 5,
    )
    ),
    fillColor: Colors.white70,
    filled: true,
    ),
    ),
    SizedBox(
    width: 110,
    height: 20,
    ),

    TextField(
    decoration: InputDecoration(
    hintText: 'Password',
    helperStyle: TextStyle(color: Colors.blueGrey),
    labelText: 'Password',
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.cyanAccent,
    width: 5,
    )
    ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: BorderSide(
    color: Colors.lightBlue,
    width: 5,
    )
    ),
    fillColor: Colors.white70,
    filled: true,
    ),
    ),
    SizedBox(
    width: 110,
    height: 20,
    ),

    GestureDetector(
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>  homepage()));
    },
    child:  Container(
    child: Center(
    child: Text('Login'),
    ),
    width: MediaQuery.of(context).size.width/5,
    height: 30,
    color: Colors.purpleAccent,

    ),
    ),
    ]
      )
    ),
    );
  }
}
