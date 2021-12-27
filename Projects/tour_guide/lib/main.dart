
import 'package:flutter/material.dart';

import 'tour_guide/tourguidhomepage.dart';
void main(){
  runApp(MaterialApp(
    title: "Country App",
    debugShowCheckedModeBanner: false,
    home: myApp(),
  ));
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TourGuidHomepage();
  }
}
