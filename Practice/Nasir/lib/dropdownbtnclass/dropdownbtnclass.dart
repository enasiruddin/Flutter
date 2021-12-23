import 'package:flutter/material.dart';

class DropDownBtnClass extends StatefulWidget {
  const DropDownBtnClass({Key? key}) : super(key: key);

  @override
  _DropDownBtnClassState createState() => _DropDownBtnClassState();
}

class _DropDownBtnClassState extends State<DropDownBtnClass> {
  String dropdownValue = 'O(+ve)';
  List<String> dropdownItem = ['O(+ve)','O(-ve)' , 'A(+ve)','A(-ve)'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),


        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: dropdownValue,
            items: dropdownItem.map((dropdownValue){
              return DropdownMenuItem <String>(
                  value: dropdownValue,
                  child: Text(dropdownValue)
              );
            }).toList(),

            onChanged: (newValue){
              setState(() {
                dropdownValue = newValue!;
              });
            },
          ),
        ),
      ),
    );
  }
}
