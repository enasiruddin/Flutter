import 'package:flutter/material.dart';
import 'package:travel_guide/pages/form_decoration.dart';
import 'package:travel_guide/widgets/static_variable.dart';

class AddTravelSpot extends StatefulWidget {
  const AddTravelSpot({Key? key}) : super(key: key);

  @override
  _AddTravelSpotState createState() => _AddTravelSpotState();
}

class _AddTravelSpotState extends State<AddTravelSpot> {
  String? selectTravelRegion;
  String? selectTravelSpot;
  bool onTapValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Travel Spot"),
      ),
      body: _bodyUI(),
    );
  }

  Widget _bodyUI(){
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          ClipRRect(
            child: Image.asset('images/sajek1.jpg', height: 200, width: 200,),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.camera),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.image),
              ),
            ],
          ),
          SizedBox(height: 10,),
          TextField(
            maxLines: 5,
            onTap: (){
              onTapValue= !onTapValue;
            },
            keyboardType: TextInputType.text,
            decoration: FormDecoration.copyWith(
              labelText: 'Spot Name',
              labelStyle: TextStyle(color:Colors.black),
              fillColor: onTapValue == true? Colors.grey: Colors.white,
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 3
              ),
            ),
            width: size.width,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: selectTravelRegion,
                hint: Container(
                  width: size.width*.75,
                  child: Text('Select Spot',style: TextStyle(
                      color:Colors.grey[700],
                      fontSize: size.height*0.023
                  ),),
                ),
                items: StaticVariables.TravelRegion.map((selectTravelRegion){
                  return DropdownMenuItem(child: Container(
                    width: size.width*.75,
                    child: Text(selectTravelRegion,style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 16,
                    ),),

                  ),
                    value: selectTravelRegion,) ;
                },
                ).toList(),
                dropdownColor: Colors.white,
                onChanged: (newValue)
                {
                  setState(() {
                    selectTravelRegion = newValue as String?;
                  });
                },

              ),

            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 3
              ),
            ),
            width: size.width,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: selectTravelRegion,
                hint: Container(
                  width: size.width*.75,
                  child: Text('Select Spot',style: TextStyle(
                      color:Colors.grey[700],
                      fontSize: size.height*0.023
                  ),),
                ),
                items: StaticVariables.TravelRegion.map((selectTravelRegion){
                  return DropdownMenuItem(child: Container(
                    width: size.width*.75,
                    child: Text(selectTravelRegion,style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 16,
                    ),),

                  ),
                    value: selectTravelRegion,) ;
                },
                ).toList(),
                dropdownColor: Colors.white,
                onChanged: (newValue)
                {
                  setState(() {
                    selectTravelRegion = newValue as String?;
                  });
                },

              ),

            ),
          ),
        ],
      ),
    );
  }
}
