import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class RetriveData extends StatefulWidget {
  const RetriveData({Key? key}) : super(key: key);

  @override
  _RetriveDataState createState() => _RetriveDataState();
}

class _RetriveDataState extends State<RetriveData> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  bool longpressed=false;

  create() async {
    try {
      await FirebaseFirestore.instance.collection('user').doc(email.text).set({
        'name':name.text,
        'email':email.text,
      });
    } catch (e) {
      print(e);
    }
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('You have successfully Created')));
  }

  update() async {
    try {
      await FirebaseFirestore.instance.collection('user').doc(email.text).update(
          {
            'name':name.text,
            // 'email':email.text,
          });
    } catch (e) {
      print(e);
    }
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('You have successfully deleted')));
  }

  Future delete(String id) async {
    try {
      await FirebaseFirestore.instance.collection('user').doc(id).delete();
    } catch (e) {
      print(e);
    }
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('You have successfully deleted')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrive Data'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                label: Text('name'),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(15)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(15)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: email,
              decoration: InputDecoration(
                label: Text('Email'),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(15)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(15)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    create();
                    name.clear();
                    email.clear();
                  },
                  color: Colors.blue,
                  child: Text('Create'),
                ),
                SizedBox(width: 18,),
                RaisedButton(
                  onPressed: () {
                    update();
                    name.clear();
                    email.clear();
                  },
                  color: Colors.blue,
                  child: Text('Update'),
                ),
                SizedBox(width: 18,),
                RaisedButton(
                  onPressed: () {
                    delete(email.text);
                    name.clear();
                    email.clear();

                  },
                  color: Colors.blue,
                  child: Text('Delete'),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child:StreamBuilder(
                    stream: FirebaseFirestore.instance.collection("user")
                        .snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if(snapshot.hasData) {
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          // primary: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            QueryDocumentSnapshot networkData = snapshot.data!.docs[index];
                            // // if (snapshot.hasData) {
                            // //   return Card(
                            // //     child: Image.network(
                            // //       networkData['img'],
                            // //       fit: BoxFit.fill,
                            // //     ),
                            // //   );
                            // // }
                            // return Center(
                            //   child: CircularProgressIndicator(),
                            // );
                            return Card(
                              child: ListTile(
                                onLongPress: (){
                                  setState(() {
                                    name.text=networkData['name'];
                                    email.text=networkData['email'];
                                     longpressed=!longpressed;
                                  });
                                },
                                title: Text(networkData['name']),
                                subtitle: Text(networkData['email']),
                                trailing: longpressed==true ?IconButton(
                                  onPressed:()async {await delete(networkData.id);},
                                  color: Colors.blue,
                                  icon: Icon(Icons.delete),
                                ):Text(''),
                              ),
                            );
                          },
                        );
                      }
                      return Center(child: CircularProgressIndicator());
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}