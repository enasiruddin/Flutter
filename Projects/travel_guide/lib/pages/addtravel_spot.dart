
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_guide/pages/form_decoration.dart';
import 'package:travel_guide/widgets/buttons.dart';
import 'package:travel_guide/widgets/static_variable.dart';

class AddTravelSpot extends StatefulWidget {
  const AddTravelSpot({Key? key}) : super(key: key);

  @override
  _AddTravelSpotState createState() => _AddTravelSpotState();
}

class _AddTravelSpotState extends State<AddTravelSpot> {
  String? selectTravelRegion;
  String? selectTravelSpot;
  ImagePicker picker = ImagePicker();
  File? _image;
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
              child: _image !=null ?Image.file(
                _image!,
                width: size.width,
                height: size.height * 0.3,
                fit: BoxFit.contain,
              ):Icon(Icons.image,size: size.height * 0.3,color: Theme.of(context).primaryColor,)

          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){_getImageFromCamera();},
                icon: Icon(Icons.camera),
              ),
              IconButton(
                onPressed: (){_getImageFromGallery();},
                icon: Icon(Icons.image),
              ),
            ],
          ),
          SizedBox(height: 10,),
          TextField(
            maxLines: 2,
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
                    selectTravelSpot = null;
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
                value: selectTravelSpot,
                hint: Container(
                  width: size.width*.75,
                  child: Text('Select Travel Region',style: TextStyle(
                      color:Colors.grey[700],
                      fontSize: size.height*0.023
                  ),),
                ),
                items: selectTravelRegion==null? null
                    :selectTravelRegion=='Travel Bangladesh'?StaticVariables.TravelBD.map((selectTravelSpot){
                  return DropdownMenuItem(child: Container(
                    width: size.width*.75,
                    child: Text(selectTravelSpot,style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 16,
                    ),),

                  ),
                    value: selectTravelSpot,) ;
                },
                ).toList()
                :StaticVariables.TravelWorld.map((selectTravelSpot){
                  return DropdownMenuItem(child: Container(
                    width: size.width*.75,
                    child: Text(selectTravelSpot,style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 16,
                    ),),

                  ),
                    value: selectTravelSpot,) ;
                },
                ).toList(),
                onChanged: (newValue)
                {
                  setState(() {
                    selectTravelSpot = newValue as String?;
                  });
                },
                dropdownColor: Colors.white,
              ),

            ),
          ),
          SizedBox(height: 10,),
          TextField(
            maxLines: 5,
            keyboardType: TextInputType.text,
            decoration: FormDecoration.copyWith(
              labelText: 'Description',
              labelStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){},
            child: button(context, 'Submit'),
          )

        ],
      ),
    );
  }
  Future<void> _getImageFromGallery()async{
    final pickedFile = await picker.pickImage(source: ImageSource.gallery,maxWidth: 300,maxHeight: 300);
    if(pickedFile!=null){
      setState(() {
        _image = File(pickedFile.path);
      });
    }else {
      // showSnackBar(_scaffoldKey, 'No image selected', Colors.deepOrange);
      Navigator.pop(context);
    }
  }
  Future<void> _getImageFromCamera()async{
    final pickedFile = await picker.pickImage(source: ImageSource.camera,maxWidth: 300,maxHeight: 300);
    if(pickedFile!=null){
      setState(() {
        _image = File(pickedFile.path);
      });
    }else {
      // showSnackBar(_scaffoldKey, 'No image selected', Colors.deepOrange);
      Navigator.pop(context);
    }
  }


}
