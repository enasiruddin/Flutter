import 'package:flutter/material.dart';
import 'package:nasir/practicedisplaylist/practiceUserData.dart';
import 'package:nasir/practicedisplaylist/practiceuser_model.dart';

class DisplyClass extends StatefulWidget {
  const DisplyClass({Key? key}) : super(key: key);

  @override
  _DisplyClassState createState() => _DisplyClassState();
}

class _DisplyClassState extends State<DisplyClass> {
  List <PracticeUser> practiceusers=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    practiceusers = GetPracticeUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display ListView"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: practiceusers.length,
          itemBuilder: (context, index){
            return Card(
              child: Column(
                children: [
                  Text('${practiceusers[index].name}'),
                  Text('${practiceusers[index].id}'),
                  Text('${practiceusers[index].password}'),

                ],
                ),
            );
          }
      ),
    );
  }
}
