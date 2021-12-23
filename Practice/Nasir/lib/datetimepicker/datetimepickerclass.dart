import 'package:flutter/material.dart';

class DateTimePickerClass extends StatefulWidget {
  const DateTimePickerClass({Key? key}) : super(key: key);

  @override
  _DateTimePickerClassState createState() => _DateTimePickerClassState();
}

class _DateTimePickerClassState extends State<DateTimePickerClass> {
  DateTime? pickDate;
  TimeOfDay? pickTime;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pickDate = DateTime.now();
    pickTime = TimeOfDay.now();


  }
void _pickDate() async{
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: pickDate!,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5),
    );

    if(date != null){
      setState(() {
        pickDate = date;
      });
    }
}
void _pickTime() async{
    TimeOfDay? Time = await showTimePicker(
      context: context,
      initialTime: pickTime!,
    );

    if(Time != null){
      setState(() {
        pickTime = Time;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Date : ${pickDate!.day} : ${pickDate!.month} : ${pickDate!.year}'
            ),
            trailing: IconButton(
              icon: Icon(Icons.calendar_today_outlined),
              onPressed: (){
                _pickDate();
              },
            ) ,
          ),
          ListTile(
            title: Text(
                'Time : ${pickTime!.format(context) }'
            ),
            trailing: IconButton(

              icon: Icon(Icons.calendar_today_outlined),
              onPressed: (){
                _pickTime();
              },
            ) ,
          ),
        ],
      ),
    );
  }
}
