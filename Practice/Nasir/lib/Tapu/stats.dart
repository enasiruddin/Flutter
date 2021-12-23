import 'package:flutter/material.dart';
class toper extends StatefulWidget {
  const toper({Key? key}) : super(key: key);

  @override
  _toperState createState() => _toperState();
}

class _toperState extends State<toper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flags'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            width: 500,
            height: 100,
            padding: EdgeInsets.all(35),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
             color: Colors.amber,
            ),
           child: Row(
             children: [
               Image.asset('asset/a.jpg',
                 height: 150,
                 width:  MediaQuery.of(context).size.width / 10,
               fit: BoxFit.fill,
               ),

               Container(
              padding: EdgeInsets.only(left:20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bangladesh"),
                  Text("bangla ")
                ],
              ),
               )
             ],
           ),
          ),


        ],
      ),
      )
    );
  }
}
