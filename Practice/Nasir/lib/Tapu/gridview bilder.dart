import 'package:flutter/material.dart';
class gratd extends StatefulWidget {
  const gratd({Key? key}) : super(key: key);

  @override
  _gratdState createState() => _gratdState();
}

class _gratdState extends State<gratd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid'),),

body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(

    maxCrossAxisExtent: 4,
  //crossAxisCount: 3
),
    itemBuilder: (context,index){
  return Card(
     child: ListTile(
       title: Text('gggggv'),
       subtitle: Text('gyeheueu'),
     ),
  );
    }
),

    );
  }
}
