import 'package:flutter/material.dart';


import 'listview.dart';
class flatbutton extends StatefulWidget {
  const flatbutton({Key? key}) : super(key: key);

  @override
  _flatbuttonState createState() => _flatbuttonState();
}

class _flatbuttonState extends State<flatbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text('Flat Button'), centerTitle: true,),
     body: Container(
       child: FlatButton(
         onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (Context)=> Listview())),
         child: Text('sing in'),
         color: Colors.red,

       )
     )
    );
  }
}
