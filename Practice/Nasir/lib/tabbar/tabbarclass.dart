import 'package:flutter/material.dart';
import 'package:nasir/practicedisplaylist/practiceuser_display.dart';

class TabBarClass extends StatefulWidget {
  const TabBarClass({Key? key}) : super(key: key);

  @override
  _TabBarClassState createState() => _TabBarClassState();
}

class _TabBarClassState extends State<TabBarClass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBarView widget"),
            backgroundColor: Colors.brown,
            centerTitle: true,
            bottom: TabBar(
              //labelColor: Colors.red,
              indicatorColor: Colors.green,
              tabs: [
                Tab(
                  text: "Home",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "Menu",
                  icon: Icon(Icons.menu),
                ),

              ],
            ),
            actions: [
              IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplyClass()));
                  },
                  icon: Icon(Icons.home),
              ),
              IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.menu),

              ),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplyClass()));
              },
                icon: Icon(Icons.menu),
              )


            ],
          ),
          body: TabBarView(
            children: [
              // Container(
              //   color: Colors.blue,
              // ),
              Container(
                color: Colors.red,
              ),
              DisplyClass(),
            ],
          ),
        )
    );
  }
}
