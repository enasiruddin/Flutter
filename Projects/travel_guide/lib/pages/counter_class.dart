import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'count_provider.dart';

class CounterClass extends StatefulWidget {
  const CounterClass({Key? key}) : super(key: key);

  @override
  _CounterClassState createState() => _CounterClassState();
}

class _CounterClassState extends State<CounterClass> {

  @override
  Widget build(BuildContext context) {
    final CountProvider countProvider = Provider.of<CountProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Class with Provider'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              countProvider.count.toString(), style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Increment'),
              onPressed: countProvider.increment,
            ),
            RaisedButton(
              child: Text('Decrement'),
              onPressed: countProvider.decrement,
            )
          ],
        ),
      ),
    );
  }
}
