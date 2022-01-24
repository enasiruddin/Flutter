import 'package:flutter/material.dart';

Widget button(BuildContext context, String buttonName){
  Size size = MediaQuery.of(context).size;
  return Material(
    elevation: 2,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    child: Container(
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Theme.of(context).primaryColor,
      ),
      child: Text(
        buttonName,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: size.width /20
        ),
      ),
    ),
  );
}