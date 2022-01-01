import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nasir/country_app/homepage.dart';
import 'package:nasir/hidden_folder/hidden_folder.dart';

class SplashScreenClass extends StatefulWidget {
  const SplashScreenClass({Key? key}) : super(key: key);

  @override
  _SplashScreenClassState createState() => _SplashScreenClassState();
}

class _SplashScreenClassState extends State<SplashScreenClass> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
        ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HiddenFolderClass()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Image.asset(
          "assets/pictures/afganistan.png",
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),


    );
  }
}
