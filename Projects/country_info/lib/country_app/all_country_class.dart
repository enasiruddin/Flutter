
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'appbar.dart';
import 'country_data.dart';
import 'country_model.dart';

class AllCountryClass extends StatefulWidget {
  //const AllCountryClass({Key? key}) : super(key: key);
  String appBarTitle;
  AllCountryClass(this.appBarTitle);
  @override
  _AllCountryClassState createState() => _AllCountryClassState();
}

class _AllCountryClassState extends State<AllCountryClass> {
  List<CountryModel> allCountry = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allCountry = GetCountryInfo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarClass(widget.appBarTitle),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2),
            itemCount: allCountry.length,
            itemBuilder: (context, index){
              return GestureDetector(
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                          color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('assets/pictures/${allCountry[index].name!.toLowerCase()}.png'),
                                fit: BoxFit.fill
                            )
                        ),

                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                          color: Colors.blue,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${allCountry[index].name}", style: TextStyle(fontSize: 18, color: Colors.white),),
                            Text("${allCountry[index].capital}", style: TextStyle(fontSize: 14, color: Colors.white),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                onTap: (){
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Color(0xD50C0C0C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                    ),
                    builder: (BuildContext context){
                      return Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(flex:9,  child: Text("${allCountry[index].name}", style: TextStyle(fontSize: 20, color: Colors.white,),textAlign: TextAlign.center,)),
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: Icon(Icons.clear),
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                    alignment: Alignment.topRight,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              children: [
                                Card(
                                  child: ListTile(
                                    leading: Icon(Icons.location_city, color: Colors.white, size: 30,),
                                    title: Text("${allCountry[index].capital}", style: TextStyle(color: Colors.white),),
                                    subtitle: Text("Capital",style: TextStyle(color: Colors.white),),
                                    tileColor: Color(0xD20C0C0C),
                                  ),
                                ),
                                Card(
                                  child: ListTile(
                                    leading: Icon(Icons.attach_money_outlined, color: Colors.white, size: 30,),
                                    title: Text("${allCountry[index].currency}",style: TextStyle(color: Colors.white),),
                                    subtitle: Text("Currency",style: TextStyle(color: Colors.white),),
                                    tileColor: Color(0xF20C0C0C),
                                  ),
                                ),
                                Card(
                                  child: ListTile(
                                    leading: Icon(Icons.language_outlined, color: Colors.white, size: 30,),
                                    title: Text("${allCountry[index].language}",style: TextStyle(color: Colors.white),),
                                    subtitle: Text("Language",style: TextStyle(color: Colors.white),),
                                    tileColor: Color(0xD20C0C0C),
                                  ),
                                ),
                                Card(
                                  child: ListTile(
                                    leading: Icon(Icons.place_outlined, color: Colors.white, size: 30,),
                                    title: Text("${allCountry[index].continent}",style: TextStyle(color: Colors.white),),
                                    subtitle: Text("Continent",style: TextStyle(color: Colors.white),),
                                    tileColor: Color(0xF20C0C0C),
                                  ),
                                ),
                                Card(
                                  child: ListTile(
                                    leading: Icon(Icons.phone_outlined, color: Colors.white, size: 30,),
                                    title: Text("${allCountry[index].calling_code}",style: TextStyle(color: Colors.white),),
                                    subtitle: Text("Calling Code",style: TextStyle(color: Colors.white),),
                                    tileColor: Color(0xD20C0C0C),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      );
                    }
                  );
                },
              );
            }
        ),
      ),
    );

  }
}
