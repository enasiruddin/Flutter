import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nasir/Tapu/culomn.dart';
import 'package:nasir/Tapu/stack.dart';
class Rapid extends StatefulWidget {
  const Rapid({Key? key}) : super(key: key);

  @override
  _RapidState createState() => _RapidState();
}

class _RapidState extends State<Rapid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.phone),

      ),
      body: ListView(
        children: [
          ListTile(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context)=>stack()));
      },


            title: Text('Phonebook'),
            subtitle: Text('0174524258'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('one'),
            ),
      trailing: Icon(Icons.phone),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>stack()));
            },
            title: Text('MyRapid'),
            subtitle: Text('017562358'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('one'),
            ),
            trailing: Icon(Icons.phone),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>Culomns()));
            },
            title: Text('RL'),
            subtitle: Text('017232652528'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('one'),
            ),
            trailing: Icon(Icons.phone),
          ),
          Divider(),ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>Culomns()));
            },
            title: Text('R'),
            subtitle: Text('01745627678'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('one'),
            ),
            trailing: Icon(Icons.phone),
          ),
          Divider(),ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>stack()));
            },
            title: Text('F'),
            subtitle: Text('01743433558'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('one'),
            ),
            trailing: Icon(Icons.phone),
          ),
          Divider(),ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>Culomns()));
            },
            title: Text('Q'),
            subtitle: Text('01753652348'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('one'),
            ),
            trailing: Icon(Icons.phone),
          ),
          Divider(),ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>Culomns()));
            },
            title: Text('S'),
            subtitle: Text('01756325328'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('one'),
            ),
            trailing: Icon(Icons.phone),
          ),
          Divider(),
        ],
      ),
    );
  }
  }

