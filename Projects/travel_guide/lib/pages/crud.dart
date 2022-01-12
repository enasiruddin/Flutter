import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travel_guide/widgets/appbardecoration.dart';

class Crud extends StatefulWidget {
  const Crud({Key? key}) : super(key: key);

  @override
  _CrudState createState() => _CrudState();
}

class _CrudState extends State<Crud> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  final CollectionReference _user =
  FirebaseFirestore.instance.collection('user');

  Future<void> _create() async {

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name',labelStyle: TextStyle(color: Colors.blue)),
                ),
                TextField(
                  controller: _emailTextController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.blue)
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text("Create"),
                  onPressed: () async {
                    final String? name = _nameController.text;
                    final String? email = _emailTextController.text;
                    if (name != null && email != null) {
                      await _user.add({"name": name, "email": email});

                      _nameController.text = '';
                      _emailTextController.text = '';

                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }

  Future<void> _delete (String userid) async {
    await _user.doc(userid).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDecoration(context, "Firebase Crud"),
      body: Container(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('user').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                primary: true,
                itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index){
                    QueryDocumentSnapshot networkData = snapshot.data!.docs[index];
                    return Card(
                      child: ListTile(
                        title: Text( networkData['name'] ),
                        subtitle: Text(networkData['email'] ),
                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.edit),
                              ),
                              IconButton(
                                onPressed: (){
                                  _delete(networkData.id);
                                },
                                icon: Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );

          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _create();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
