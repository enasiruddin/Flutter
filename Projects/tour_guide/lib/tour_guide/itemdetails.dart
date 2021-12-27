import 'package:flutter/material.dart';
import 'appbarclass.dart';
import 'database/sqflite_helper.dart';

class ItemDetailesClass extends StatefulWidget {
  // const DistrictClass({Key? key}) : super(key: key);
  String? appBarname;
  @override
  _ItemDetailesClassState createState() => _ItemDetailesClassState();
  ItemDetailesClass(this.appBarname);

}

class _ItemDetailesClassState extends State<ItemDetailesClass> {
  //Read all items (itemdatalist Table)
  Future<List<Map<String, dynamic>>> getitemdatalistinfo() async{
    final db = await SQLHelper.db();
    var result;
    result = await db.rawQuery("Select * FROM itemdatalist Where itemdataname = '${widget.appBarname}' ;");
    return result;
  }
  List<Map<String, dynamic>> DistrictName = [];

  void _refreshitemdatalist() async{
    final data = await getitemdatalistinfo();
    setState(() {
      DistrictName = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _refreshitemdatalist();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    CustomColor customColor = CustomColor();
    return Scaffold(
      appBar: appbarClass("${widget.appBarname}"),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: BodyCardItem(),
      ),
    );
  }

  Widget BodyCardItem(){
    var size = MediaQuery.of(context).size;
    CustomColor customColor = CustomColor();
    return Padding(
        padding: EdgeInsets.all(2),
      child: ListView(
        children: [
          Container(
            height: size.height*0.4,
            width: size.width,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/pictures/sajek1.jpg'),
                  fit: BoxFit.fill,
                )
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Sajek Vally ',
              style: TextStyle(fontSize: 30, color: customColor.red, fontWeight: FontWeight.bold),
            ),
          ),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\n There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }


}

