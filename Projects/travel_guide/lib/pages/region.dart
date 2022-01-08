import 'package:flutter/material.dart';
import 'package:travel_guide/pages/sport.dart';
import 'package:travel_guide/widgets/appbardecoration.dart';
import 'package:travel_guide/widgets/static_variable.dart';

class rrrr extends StatefulWidget {
  int? index;
String? region;

  @override
  _rrrrState createState() => _rrrrState();

  rrrr({this.index, this.region});
}

class _rrrrState extends State<rrrr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDecoration(context,"${widget.region}"),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: widget.index==0?StaticVariables.TravelBD.length
          :StaticVariables.TravelWorld.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    sp()));
              },
              child: Card(
                child: Text( widget.index==0?StaticVariables.TravelBD[index]
                    :StaticVariables.TravelWorld[index],style: TextStyle(fontSize: 20),),
              ),
            );
          }),
    );
  }
}
