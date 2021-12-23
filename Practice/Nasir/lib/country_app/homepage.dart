import 'package:flutter/material.dart';
import 'package:nasir/country_app/all_countries.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Continent = [
    ['Asia','assets/pictures/afganistan.png' ],
    ['Europ','assets/pictures/afganistan.png'],
    ['Africa','assets/pictures/afganistan.png'],
    ['North America','assets/pictures/afganistan.png'],
    ['South America','assets/pictures/afganistan.png'],
    ['Oceania','assets/pictures/afganistan.png'],
    ['Antertica','assets/pictures/afganistan.png']
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/pictures/afganistan.png',
                fit: BoxFit.fill,
              ),

            ),
            toolbarHeight: 100,
            expandedHeight: 300,
            collapsedHeight: 100,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AllCountriesClass(
                        Continent[index][0]
                      )));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Continent[index][1]),
                          fit: BoxFit.fill
                        )
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        Continent[index][0],
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  );
                },
              childCount: Continent.length,
            ),
          )
        ],
      ),
    );
  }
}
