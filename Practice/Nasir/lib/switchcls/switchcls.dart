
import 'package:flutter/material.dart';

class SwitchClass extends StatefulWidget {
  const SwitchClass({Key? key}) : super(key: key);

  @override
  _SwitchClassState createState() => _SwitchClassState();
}

class _SwitchClassState extends State<SwitchClass> {
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("$isSelect"),
            Switch(
                value: isSelect,
                onChanged: (value){
                  setState(() {
                    isSelect= value;
                    print(isSelect);
                  });
                }
            )
          ],
        ),
      ),
    );
  }
}
