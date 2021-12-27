import 'package:flutter/material.dart';
PreferredSizeWidget appbarClass(String apptitle){
  CustomColor customColor = CustomColor();
  return AppBar(
    title: Text(apptitle , style: TextStyle(color: Color(customColor.white)),),
    backgroundColor: Color(customColor.green),
    centerTitle: true,
    actions: [
      Icon(Icons.search)
    ],
  );
}

class CustomColor{
  int green =0xFF228B22;
  int white =0xFFFFFFFF;
  Color red = Color(0xFF228B22);
  //CustomColor(this.color);
}
