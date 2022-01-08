import 'package:flutter/material.dart';
import 'package:travel_guide/widgets/appbardecoration.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBarDecoration(context, "Home Page"),
      body: _bodyUi(),
    );
  }

  Widget _bodyUi(){
    Size size = MediaQuery.of(context).size;
    Color Primarycolor = Theme.of(context).primaryColor;
    return ListView(
      children: [
        Container(
          height: size.height*0.2,
          width: size.width,
          decoration: BoxDecoration(
            color: Primarycolor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.pin_drop_outlined, size: size.height*0.1, color: Colors.white,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Travel Guide", style: TextStyle(fontSize: size.height*0.045, color: Colors.white),),
                  Text("Travel information for all countries", style: TextStyle(fontSize: size.height*0.02, color: Colors.white),)
                ],
              )
            ],
          ),
        ),
        GridView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2
           ),
            itemCount: 6,
            itemBuilder: (context, index){
              return _gridBuilder(index);
            }
        )
      ],
    );
  }

  Widget _gridBuilder(int index){
    return InkWell(
      onTap: (){

      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
                index==0 ? Icons.my_location_sharp
                    : index==1? Icons.home
                    : index==2? Icons.pin_drop_outlined
                    : index==3? Icons.umbrella
                    : index==4? Icons.face
                    : index==5? Icons.home
                    : Icons.home,
              size: 25, color: Colors.green,
            ),
            Text(

              index==0? 'Travel Bangladesh'
                  : index==1? 'Forein Travel'
                  : index==2? 'Travel Blog'
                  : index==3? 'Favourite Place'
                  : index==4? 'Video'
                  : index==5? 'Saved Info'
                  : 'extra'
              , style: TextStyle(color: Colors.green),)
          ],
        ),
      ),
    );
  }
}
