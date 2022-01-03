import 'package:flutter/material.dart';

import 'pages/homepage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        hintColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
