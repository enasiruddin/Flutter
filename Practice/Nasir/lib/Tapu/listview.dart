import 'package:flutter/material.dart';
class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Topu'),),
      body: ListView(
        children: [
          ListTile(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (Context)=> Listview())),
           title: Text('Topu Debnath'),
            subtitle: Text('Topu Debnath'),
            leading: Image.asset('asset/a.jpg'),
           trailing: Icon(Icons.multiline_chart),

            ),
          Divider(),
          ListTile(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (Context)=> Listview())),
            title: Text('Topu Debnath'),
            subtitle: Text('Topu Debnath'),
            leading: Image.asset('asset/a.jpg',
            
            ),
            trailing: Icon(Icons.multiline_chart),

          ),
          Divider(),
          ListTile(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (Context)=> Listview())),
            title: Text('Topu Debnath'),
            subtitle: Text('Topu Debnath'),
            leading: Image.asset('asset/a.jpg'),
            trailing: Icon(Icons.multiline_chart),

          ),
          Divider(),
          ListTile(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (Context)=> Listview())),
            title: Text('Topu Debnath'),
            subtitle: Text('Topu Debnath'),
            leading: Image.asset('asset/a.jpg'),
            trailing: Icon(Icons.multiline_chart),

          ),
          Divider(),
          ListTile(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (Context)=> Listview())),
            title: Text('Topu Debnath'),
            subtitle: Text('Topu Debnath'),
            leading: Image.asset('asset/a.jpg'),
            trailing: Icon(Icons.multiline_chart),

          ),
          Divider(),







    ]
      )
    );
      
  }
}