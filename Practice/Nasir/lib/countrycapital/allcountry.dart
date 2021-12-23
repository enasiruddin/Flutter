import 'package:flutter/material.dart';
import 'package:nasir/countrycapital/countrydata.dart';
import 'package:nasir/countrycapital/countrymodel.dart';

import 'countryinfo.dart';

class ALlCountryNamesClass extends StatefulWidget {
  const ALlCountryNamesClass({Key? key}) : super(key: key);

  @override
  _ALlCountryNamesClassState createState() => _ALlCountryNamesClassState();
}

class _ALlCountryNamesClassState extends State<ALlCountryNamesClass> {

  List <CountryModel> countrydata =[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countrydata = GetCountryModel();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("All Countries"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: countrydata.length,
                    itemBuilder: (context, index){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CountryInfo(
                              name:countrydata[index].name,
                              capital:countrydata[index].capital,
                              continent:countrydata[index].continent,
                          )));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                width: size.width*0.3,
                                //color: Colors.amberAccent,
                                child: Image.asset('assets/pictures/afganistan.png'),
                              ),
                              Column(
                                children: [
                                  Text("${countrydata[index].name}", style: TextStyle(fontSize: 20),),
                                  Text("${countrydata[index].capital}", style: TextStyle(fontSize: 18),),
                                ],
                              )
                            ],
                          ),
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
