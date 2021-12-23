import 'package:flutter/material.dart';
import 'all_country_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<CountryModel> countryModel = [];
  //
  // void initState() {
  //   countryModel = GetCountryInfo();
  // }
  List continent = [
    ['Asia','assets/pictures/europe.jpg'],
    ['Central Asia','assets/pictures/southasia.jpg'],
    ['Middle East','assets/pictures/middleeast.jpg'],
    ['South Asia','assets/pictures/southasia.jpg'],
    ['North America','assets/pictures/northamerica.jpg'],
    ['East & Southeast Asia','assets/pictures/europe.jpg'],
    ['Central Ameriaca','assets/pictures/centralamerica.jpg'],
    ['South America','assets/pictures/southasia.jpg'],
    ['South Africa','assets/pictures/middleeast.jpg'],
    ['South Australia & Oceania','assets/pictures/europe.jpg'],
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 100,
            expandedHeight: 300,
            collapsedHeight: 100,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Country Information", style: TextStyle(fontSize: 25, ),),
              centerTitle: true,
              background: Image.asset(
                'assets/pictures/map.jpg',
                fit: BoxFit.fill,
              ),
            ),

          ),
         SliverList(

           delegate: SliverChildBuilderDelegate((context, index){
               return GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => AllCountryClass("${continent[index][0]}")));
                 },
                 child: Stack(
                   children: [
                     Container(
                       margin: EdgeInsets.all(5),
                       padding: EdgeInsets.all(5),
                       height: 100,
                       //color: Colors.blue,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                           borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(
                               image: AssetImage('${continent[index][1]}'),
                               fit: BoxFit.fill,
                               colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
                           ),
                         color: Colors.black,
                       ),
                       child: Text("${continent[index][0]}", style: TextStyle(fontSize: 20, color: Colors.white),),
                     ),
                     Positioned(
                       top: 0,
                       right: 0,
                       child: Container(
                         margin: EdgeInsets.all(5),
                         padding: EdgeInsets.all(5),
                         //color: Colors.red,
                         width: 100,
                         height: 100,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                             Container( alignment: Alignment.center, width: 50, height: 30, padding: EdgeInsets.all(4), decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10), border
                                 : Border.all(width: 2, color: Colors.white),), child: Text("100%", style: TextStyle(fontSize: 13, color: Colors.white,))),
                             SizedBox(),
                             Container( padding: EdgeInsets.all(4), decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10), color: Colors.blue), child: Text("10/40", style: TextStyle(fontSize: 15, color: Colors.white,)))
                           ],
                         ),
                       ),
                     )
                   ],
                 ),
               );
           },
           childCount: continent.length,
           ),
         ),

        ],
      ),
    );
  }
}
