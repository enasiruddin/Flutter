import 'package:flutter/material.dart';

class CheckBoxClass extends StatefulWidget {
  const CheckBoxClass({Key? key}) : super(key: key);

  @override
  _CheckBoxClassState createState() => _CheckBoxClassState();
}

class _CheckBoxClassState extends State<CheckBoxClass> {
  bool engineer = false;
  bool doctor = false;
  bool teacher = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    value: engineer,
                    onChanged: (bool? value){
                      setState(() {
                        engineer=value!;
                      });
                    }
                ),
                Text('Engineer')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    value: doctor,
                    onChanged: (bool? value){
                      setState(() {
                        doctor=value!;
                      });
                    }
                ),
                Text('Doctor')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    value: teacher,
                    onChanged: (bool? value){
                      setState(() {
                        teacher=value!;
                      });
                    }
                ),
                Text('Teacher')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
