import 'package:flutter/material.dart';

PreferredSizeWidget appbarClass(String apptitle){
  return AppBar(
    title: Text(apptitle),
    centerTitle: true,
  );
}