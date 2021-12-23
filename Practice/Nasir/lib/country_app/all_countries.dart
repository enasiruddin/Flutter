import 'dart:html';

import 'package:flutter/material.dart';

import 'country_details.dart';

class AllCountriesClass extends StatefulWidget {
  //const AllCountriesClass({Key? key}) : super(key: key);
  String? continent;
  @override
  _AllCountriesClassState createState() => _AllCountriesClassState();

  AllCountriesClass(this.continent);
}

class _AllCountriesClassState extends State<AllCountriesClass> {
  List Country = [
    ['Bangladesh', 'assets/pictures/afganistan.png','Taka', '160000000','Dhaka'],
    ['India', 'assets/pictures/afganistan.png','Rupi', '160000000','Islamabad'],
    ['Pakistan', 'assets/pictures/afganistan.png','Agfan Afgani', '160000000','Kalkata'],
    ['Afganistan', 'assets/pictures/afganistan.png','Taka', '160000000','Kabul'],
    ['Mayanmar', 'assets/pictures/afganistan.png','Taka', '160000000','MMM'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.continent}"),
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,

          ),
          itemCount: Country.length,
          itemBuilder: (context, index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CountryDetailsClass(
                  countryName: Country[index][0],
                  flag: Country[index][1],
                  currency: Country[index][2],
                  population: Country[index][3],
                  capital: Country[index][4],
                )));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Image.asset(Country[index][1]),
                    Text(Country[index][0]),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
