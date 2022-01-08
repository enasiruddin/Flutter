import 'package:flutter/cupertino.dart';
import 'package:travel_guide/model/travel_model.dart';

List<TravelModel> GetTavel(){
  List<TravelModel> list = [];
   TravelModel travelModel = TravelModel();
   travelModel.spotname = 'Cox\'s Bazar';
   travelModel.timage = 'images/sajek1.jpg';
   travelModel.tdescription = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
   list.add(travelModel);

  travelModel = TravelModel();
  travelModel.spotname = 'Cox\'s Bazar';
  travelModel.timage = 'images/sajek1.jpg';
  travelModel.tdescription = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  list.add(travelModel);


  return list;
}