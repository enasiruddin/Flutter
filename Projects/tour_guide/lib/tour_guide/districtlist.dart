import 'package:flutter/material.dart';
import 'appbarclass.dart';
import 'database/sqflite_helper.dart';
import 'itemdetails.dart';

class DistrictClass extends StatefulWidget {
  // const DistrictClass({Key? key}) : super(key: key);
  String? appBarname;
  @override
  _DistrictClassState createState() => _DistrictClassState();
  DistrictClass(this.appBarname);

}

class _DistrictClassState extends State<DistrictClass> {
  //Read all items (itemdatalist Table)
   Future<List<Map<String, dynamic>>> getitemdatalistinfo() async{
    final db = await SQLHelper.db();
    var result;
    result = await db.rawQuery("Select * FROM itemdatalist Where itemdataname = '${widget.appBarname}' ;");
    return result;
  }
  List<Map<String, dynamic>> DistrictName = [];

  void _refreshitemdatalist() async{
    final data = await getitemdatalistinfo();
    setState(() {
      DistrictName = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _refreshitemdatalist();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;




    CustomColor customColor = CustomColor();
    return Scaffold(
      appBar: appbarClass("${widget.appBarname}"),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: size.width*0.01,
            crossAxisSpacing: size.width*0.01,
            crossAxisCount: 2,
            childAspectRatio: (5 / 2)
          ),
          itemCount: DistrictName.length ,
          itemBuilder: (context, index)=> GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemDetailesClass("${DistrictName[index]['name']}")));

              },
              child: BodyCardItem("${DistrictName[index]['name']}"),
          ),
        ),
      ),
    );
  }

  Widget BodyCardItem( String districtname){
    var size = MediaQuery.of(context).size;
    CustomColor customColor = CustomColor();
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Color(customColor.green),
            width: 2,
          )
      ),
      child: Container(
        height: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(districtname, style: TextStyle(fontSize: size.width*0.04, color: Color(customColor.green)),)
          ],
        ),
      ),
    );;
  }


}

