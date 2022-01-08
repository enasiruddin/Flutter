import 'package:flutter/material.dart';

PreferredSizeWidget appBarDecoration( BuildContext context, appBarTxt){
  return AppBar(
    title: Text(appBarTxt),
    centerTitle: true,
    backgroundColor: Theme.of(context).primaryColor,
  );
}