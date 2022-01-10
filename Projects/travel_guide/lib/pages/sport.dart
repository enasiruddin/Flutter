import 'package:flutter/material.dart';
import 'package:travel_guide/data/travel_data.dart';
import 'package:travel_guide/model/travel_model.dart';
import 'package:travel_guide/pages/spot_details.dart';
import 'package:travel_guide/widgets/appbardecoration.dart';

class sp extends StatefulWidget {
  const sp({Key? key}) : super(key: key);

  @override
  _spState createState() => _spState();
}

class _spState extends State<sp> {
  List <TravelModel> travelList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    travelList = GetTavel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDecoration(context, 'index'),
      body: _bodyUI(),
    );
  }

  Widget _bodyUI() {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: travelList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SpotDetails(
                spotname: travelList[index].spotname,
                timage: travelList[index].timage,
                tdescription: travelList[index].tdescription,
              )));
              },
            child: Container(
              margin: EdgeInsets.only(bottom: 15, left: 10, right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 3,
                        offset: Offset(0, 3))
                  ]),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    child: Image.asset(
                      '${travelList[index].timage}',
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${travelList[index].spotname}",
                    style: TextStyle(color: Colors.grey, fontSize: 30),
                  ),
                  Text(
                    "${travelList[index].tdescription}",
                    textAlign: TextAlign.justify,
                    maxLines: 2,
                  )
                ],
              ),
            ),
          );
        });
  }
}
