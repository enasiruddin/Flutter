import 'package:flutter/material.dart';
import 'package:nasir/countrycapital/countrydata.dart';
import 'package:nasir/countrycapital/countrymodel.dart';


class CountryInfo extends StatefulWidget {
  String? name;
  String? capital;
  String? continent;

  CountryInfo({this.name, this.capital, this.continent});
  @override
  _CountryInfoState createState() => _CountryInfoState();
}

class _CountryInfoState extends State<CountryInfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: size.width*1,
              height: size.height*0.3,
              child: Image.asset('assets/pictures/afganistan.png'),
              //color: Colors.green,
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    child: Text("${widget.name}", style: TextStyle(fontSize: 26.0),),
                    alignment: Alignment.center,
                  ),
                  ListTile(
                    title: Text("${widget.capital}",style: TextStyle(fontSize: 16),),
                    subtitle: Text("Capital"),
                    leading: Icon(Icons.cake),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
