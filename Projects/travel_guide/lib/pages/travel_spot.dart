import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_guide/data/travel_data.dart';
import 'package:travel_guide/model/travel_model.dart';
import 'package:travel_guide/pages/spot_details.dart';
import 'package:travel_guide/travel_provider/travel_provider.dart';
import 'package:travel_guide/widgets/appbardecoration.dart';

class TravelSpot extends StatefulWidget {
  //const sp({Key? key}) : super(key: key);
  String? region;

  TravelSpot({this.region});

  @override
  _TravelSpotState createState() => _TravelSpotState();
}

class _TravelSpotState extends State<TravelSpot> {
  // List <TravelModel> travelList = [];
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   travelList = GetTavel();
  // }

  int _counter = 0;
  void _customInitState(TravelProvider travelProvider){
    setState(() {
      _counter++;
    });
    travelProvider.getTravelSpot('${widget.region}');
  }


  @override
  Widget build(BuildContext context) {
    final TravelProvider travelProvider = Provider.of<TravelProvider>(context);

    if(_counter==0) _customInitState(travelProvider);
    // travelProvider.getTravelSpot("${widget.region}");
    return Scaffold(
      appBar: appBarDecoration(context, '${widget.region}'),
      body: _bodyUI(travelProvider),
    );
  }

  Widget _bodyUI(TravelProvider travelProvider) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: travelProvider.travelSpotList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SpotDetails(
                spotname: travelProvider.travelSpotList[index].spotname,
                timage: travelProvider.travelSpotList[index].timage,
                tdescription: travelProvider.travelSpotList[index].tdescription,
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
                    child: Image.network(
                      '${travelProvider.travelSpotList[index].timage}',
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${travelProvider.travelSpotList[index].spotname}",
                    style: TextStyle(color: Colors.grey, fontSize: 30),
                  ),
                  Text(
                    "${travelProvider.travelSpotList[index].tdescription}",
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
