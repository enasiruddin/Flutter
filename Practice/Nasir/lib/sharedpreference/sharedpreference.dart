import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceClass extends StatefulWidget {
  const SharedPreferenceClass({Key? key}) : super(key: key);

  @override
  _SharedPreferenceClassState createState() => _SharedPreferenceClassState();
}

class _SharedPreferenceClassState extends State<SharedPreferenceClass> {
  int counter=0;
  Future increment() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter++;
      prefs.setInt('counter', counter);
    });
  }

  Future Decrement() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter--;
      prefs.setInt('counter', counter);
    });
  }
  getCounter() async{

    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = prefs.getInt('counter') ?? 0;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('$counter', style: TextStyle(fontSize: 60),),
            SizedBox(height: 10,),
            RaisedButton(
                onPressed: (){
                  increment();
                },
              child: Text('Increment'),
            ),
            SizedBox(height: 10,),
            RaisedButton(
              onPressed: (){
                Decrement();
              },
              child: Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }


}
