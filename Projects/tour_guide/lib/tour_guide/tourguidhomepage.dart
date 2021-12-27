import 'package:flutter/material.dart';
import 'appbarclass.dart';
import 'database/sqflite_helper.dart';
import 'districtlist.dart';

class TourGuidHomepage extends StatefulWidget {
  const TourGuidHomepage({Key? key}) : super(key: key);

  @override
  _TourGuidHomepageState createState() => _TourGuidHomepageState();
}

class _TourGuidHomepageState extends State<TourGuidHomepage> {
  List<Map<String, dynamic>> BodyCardItemdata = [];

  List DrawerListItemData = [
    ["Home", Icons.home],
    ["Bangladesh Tour", Icons.my_location_outlined],
    ["Foreign Tour", Icons.language_outlined],
    ["Tour Blog", Icons.assignment_outlined],
    ["Tour Plan", Icons.build],
    ["Hotel and Resorte", Icons.business_outlined],
    ["Video", Icons.ondemand_video_outlined],
    ["Saved information", Icons.save],
    ["Share", Icons.share],
    ["Settings", Icons.settings],
    ["Log Out", Icons.login_outlined],
  ];
  void _refreshitemdata() async{
    final data = await SQLHelper.getitemdatainfo();
    setState(() {
      BodyCardItemdata = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _refreshitemdata();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    CustomColor customColor = CustomColor();
    return Scaffold(
      appBar: appbarClass("Tour Guide"),
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Text("Tour Guide", style: TextStyle(fontSize: 32, color: Color(customColor.white)),),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: customColor.red,
                ),

              ),
            ),
            Expanded(
              flex: 4,
              child: ListView.builder(
                    itemCount: DrawerListItemData.length,
                    itemBuilder: (context, index){
                      return  DrawerListItem(DrawerListItemData[index][0], DrawerListItemData[index][1]);
                    },
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: size.width*0.01,
                crossAxisSpacing: size.width*0.01,
                crossAxisCount: 2,
              ),
              itemCount: BodyCardItemdata.length ,
              itemBuilder: (context, index){
                return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DistrictClass("${BodyCardItemdata[index]['itemname']}")));
                    },
                    child: BodyCardItem(BodyCardItemdata[index]['itemname'], BodyCardItemdata[index]['itemicon'])

                );
              },
            ),
            Container(
              height: size.height*0.2,
              width: size.width,
              // color: Colors.red,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/pictures/sajek1.jpg'),
                  fit: BoxFit.fill,
                )
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget DrawerListItem(String title, IconData iconData){
    CustomColor customColor = CustomColor();
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.pop(context);
        },
        title: Text(title),
        leading: Icon(iconData, color: Color(customColor.green),),
        trailing: Icon(Icons.arrow_forward_ios, color: Color(customColor.green),),
      ),
    );
  }

  Widget BodyCardItem( String item, String iconData){
    var size = MediaQuery.of(context).size;
    CustomColor customColor = CustomColor();
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Color(customColor.green),
            width: 2,
          )
      ),
      child: Container(
        height: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(IconData(int.parse('0x${iconData}'), fontFamily: 'materialiconsclass'), color: Color(customColor.green), size: size.width*0.15,),
            SizedBox(height: size.width*0.01,),
            Text(item, style: TextStyle(fontSize: size.width*0.04, color: Color(customColor.green)),)
          ],
        ),
      ),
    );;
}


}

