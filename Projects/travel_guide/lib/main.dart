import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/addtravel_spot.dart';
import 'pages/count_provider.dart';
import 'pages/counter_class.dart';
import 'pages/crud.dart';
import 'pages/crud_sir.dart';
import 'pages/homepage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'pages/upload_img.dart';
import 'travel_provider/travel_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // create: (context) => CountProvider(),
      providers: [
        ChangeNotifierProvider(create: (context) => CountProvider()),
        ChangeNotifierProvider(create: (context) => TravelProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green,
          hintColor: Colors.white
        ),
        debugShowCheckedModeBanner: false,
        home: Upload_Image(),
      ),
    );
  }
}
