import 'package:flutter/material.dart';
import 'package:nasir/practicedisplaylist/practiceuser_display.dart';
import 'package:nasir/searchbar/searchbarclass.dart';

import 'allcountry.dart';

class CountryCapitalClass extends StatefulWidget {
  const CountryCapitalClass({Key? key}) : super(key: key);

  @override
  _CountryCapitalClassState createState() => _CountryCapitalClassState();
}

class _CountryCapitalClassState extends State<CountryCapitalClass> {
  List<String> AllCountry = [
    'All Countries',
    'Play Quiz',
    'Favourites',
    'Asia',
    'Europ',
    'Remove Ads',
    'If you like this app, please rate it',
    'North America',
    'South America',
    'Oceania',
    'Checkout US States Capital App'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Country Capital"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: AllCountry.length,
                    itemBuilder: (context, index){
                      return GestureDetector(
                        onTap: (){
                          if(index==0){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ALlCountryNamesClass()));
                          }
                          else{
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplyClass()));

                          }
                        },
                        child: Container(

                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: Text("${AllCountry[index]}", style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center,)
                        ),
                      );
                    }

                )
            )
          ],
        ),
      ),
    );
  }
}
