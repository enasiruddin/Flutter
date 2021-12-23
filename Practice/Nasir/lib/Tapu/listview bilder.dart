import 'package:flutter/material.dart';
class Rows extends StatefulWidget {
  const Rows({Key? key}) : super(key: key);

  @override
  _RowsState createState() => _RowsState();
}

class _RowsState extends State<Rows> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       title: Text("Listview builder"),
       backgroundColor: Colors.red,
        foregroundColor: Colors.lightGreen,
        leading: Icon(Icons.home),
    ),
    body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 5,
        itemBuilder: (context,index){
          return Card(
                 shadowColor: Colors.deepPurpleAccent,
            elevation: 5,
            child: ListTile(
              tileColor: Colors.blue,
              title: Text('Topu Debnath'),
              subtitle: Text('017*******56'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('asset/a.jpg'),
              ),
             trailing: Icon(Icons.phone),
            ),
          );
        }
    ),
    );
  }
}
