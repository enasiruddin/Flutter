import 'package:flutter/material.dart';
import 'package:travel_guide/pages/travel_spot.dart';
import 'package:travel_guide/widgets/appbardecoration.dart';
import 'package:travel_guide/widgets/static_variable.dart';

import 'addtravel_spot.dart';

class RegionPage extends StatefulWidget {
  int? index;
String? region;

  @override
  _RegionPageState createState() => _RegionPageState();

  RegionPage({this.index, this.region});
}

class _RegionPageState extends State<RegionPage> {
  List regionList=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.index ==0){
      regionList = StaticVariables.TravelBD;
    }else{
      regionList = StaticVariables.TravelWorld;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDecoration(context,"${widget.region}"),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> AddTravelSpot()));
        },
        child: Icon(Icons.add),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 2 , crossAxisSpacing: 3),
          itemCount: regionList.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    TravelSpot(region: regionList[index],)));
              },
              child: Card(
                child: Text( regionList[index] ,style: TextStyle(fontSize: 20),),
              ),
            );
          }),
    );
  }
}
