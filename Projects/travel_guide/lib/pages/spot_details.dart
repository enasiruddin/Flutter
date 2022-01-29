import 'package:flutter/material.dart';
import 'package:travel_guide/data/travel_data.dart';
import 'package:travel_guide/model/travel_model.dart';
import 'package:travel_guide/widgets/appbardecoration.dart';

class SpotDetails extends StatefulWidget {
  // const SpotDetails({Key? key}) : super(key: key);
  String? spotname;
  String? tdescription;
  String? timage;

  @override
  _SpotDetailsState createState() => _SpotDetailsState();

  SpotDetails({this.spotname, this.tdescription, this.timage});
}

class _SpotDetailsState extends State<SpotDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDecoration(context, "Spot Details"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ClipRRect(
              child: Image.network(
                '${widget.timage}',
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox( height: 10),
            Text("${widget.spotname}", style: TextStyle(fontSize: 25, color: Colors.green ),),
            Text("${widget.tdescription}", style: TextStyle(fontSize: 18, ),textAlign: TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}
