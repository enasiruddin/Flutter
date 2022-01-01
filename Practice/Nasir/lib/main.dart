import 'package:flutter/material.dart';
import 'package:nasir/modelbottomsheet/model_bottomsheet_class.dart';
import 'package:nasir/searchbar/searchbarclass.dart';
import 'package:nasir/simple_calculator/simple_calculator_class.dart';
import 'package:nasir/sliverappbar/sliverappbarclass.dart';
import 'package:nasir/switchcls/switchcls.dart';
import 'package:nasir/urllauncherclass/urllancherclass.dart';


import 'carosel_slider/carosel_slider.dart';
import 'country_app/homepage.dart';
import 'countrycapital/allcountry.dart';
import 'countrycapital/countrycapital.dart';
import 'countrycapital/countryinfo.dart';
import 'curvedNavigationBar/curvedNavigationBar.dart';
import 'datetimepicker/datetimepickerclass.dart';
import 'dropdownbtnclass/dropdownbtnclass.dart';
import 'google_map/google_maps.dart';
import 'hidden_folder/hidden_folder.dart';
import 'imagepicker/imagepickerclss.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HiddenFolderClass(),
    );
  }
}
