import 'package:flutter/material.dart';
class CountryDetailsClass extends StatefulWidget {
  //const CountryDetailsClass({Key? key}) : super(key: key);
String? countryName;
String? flag;
String? currency;
String? population;
String? capital;
  @override
  _CountryDetailsClassState createState() => _CountryDetailsClassState();

CountryDetailsClass({this.countryName, this.flag, this.currency,
      this.population, this.capital});
}

class _CountryDetailsClassState extends State<CountryDetailsClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.countryName}"),centerTitle: true,),
      body: Column(
        children: [
          Image.asset('${widget.flag}', height: 250, width: double.infinity,),
          SizedBox(height:5),
          Container(
            width: double.infinity,
            height: 240,
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Country : ${widget.countryName}', style: TextStyle(color: Colors.white, fontSize: 20)),
                SizedBox(height:20),
                Text('Capital : ${widget.capital}', style: TextStyle(color: Colors.white, fontSize: 20)),
                SizedBox(height:20),
                Text('Currency : ${widget.currency}', style: TextStyle(color: Colors.white, fontSize: 20)),
                SizedBox(height:20),
                Text('Population : ${widget.population}', style: TextStyle(color: Colors.white, fontSize: 20)),

              ],
            ),
          )
        ],
      ),
    );
  }
}
