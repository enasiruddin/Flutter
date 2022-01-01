import 'package:flutter/material.dart';

class HiddenFolderClass extends StatefulWidget {
  const HiddenFolderClass({Key? key}) : super(key: key);

  @override
  _HiddenFolderClassState createState() => _HiddenFolderClassState();
}

class _HiddenFolderClassState extends State<HiddenFolderClass> {
  bool setting = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hidden Folder"),centerTitle: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text('Setting'),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      setting = !setting;
                    });
                  },
                  icon: setting==true?Icon(Icons.arrow_upward_outlined):Icon(Icons.arrow_downward_outlined),
                ),

              ),
              setting==true?Container(
                child: Column(
                  children: [
                    Card(
                      child: ListTile(
                        title: Text('Phone'),
                        trailing: Icon(Icons.phone),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Phone'),
                        trailing: Icon(Icons.phone),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Phone'),
                        trailing: Icon(Icons.phone),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Phone'),
                        trailing: Icon(Icons.phone),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Phone'),
                        trailing: Icon(Icons.phone),
                      ),
                    ),
                  ],
                ),
              ):Container(),
            ],
          ),
        ),
      ),
    );
  }
}
