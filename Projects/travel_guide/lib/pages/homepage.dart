import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_guide/pages/region.dart';
import 'package:travel_guide/widgets/appbardecoration.dart';
import 'package:travel_guide/widgets/static_variable.dart';
import 'package:url_launcher/url_launcher.dart';


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
      appBar: appBarDecoration(context, ""),
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
            itemCount: StaticVariables.HomeData.length,
            itemBuilder: (context, index){
              return _gridBuilder(index);
            }
        ),
        SizedBox(height: 20,),
        Container(

          height: 150,
          width: 50,
          color: Colors.grey,
          child: Image.asset('images/sajek1.jpg',width: 100, fit: BoxFit.fill,),
          ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 30,),
                IconButton(onPressed: ()async{
                 if(await canLaunch('https://www.facebook.com/')){
                      await launch('https://www.facebook.com/');
                    };
                 }, icon:
                  Icon(FontAwesomeIcons.facebook,size: 40,color: Colors.blue,),),
                SizedBox(width: 25,),
                IconButton(onPressed: ()async{
                  if(await canLaunch('https://twitter.com/')){
                    await launch('https://twitter.com/');
                  };
                }, icon:
                Icon(FontAwesomeIcons.twitter,size: 40,color: Colors.blue,),),
                SizedBox(width: 25,),
                IconButton(onPressed: ()async{
                 if(await canLaunch('https://www.instagram.com/')){
                 await launch('https://www.instagram.com/');
                 };
                 }, icon:
                Icon(FontAwesomeIcons.instagram,size: 40,color: Colors.red[400],),),
                SizedBox(width: 25,),
                IconButton(onPressed: ()async{
                  if(await canLaunch('https://www.youtube.com/')){
                    await launch('https://www.youtube.com/');
                  };
                }, icon:
                Icon(FontAwesomeIcons.youtube,size: 40,color: Colors.red,),),
                SizedBox(width: 30,),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _gridBuilder(int index){
    return InkWell(
      onTap: (){
        if(index==0||index==1) {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>
              RegionPage(index:index,region:StaticVariables.HomeData[index])));
        }},
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
              size: 50, color: Colors.green,
            ),
            Text(StaticVariables.HomeData[index],
              style: TextStyle(color: Colors.green,fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
