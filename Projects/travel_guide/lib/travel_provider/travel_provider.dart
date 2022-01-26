import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:travel_guide/model/travel_model.dart';
import 'package:intl/intl.dart';
class TravelProvider extends ChangeNotifier {
  TravelModel _travelModel = TravelModel();
  List<TravelModel> _travelSpotList = [];
  String? _loadingMgs;

  TravelModel get travelModel => _travelModel;

  List<TravelModel> get travelSpotList => _travelSpotList;

  String get loadingMgs => _loadingMgs!;

  set travelSpotList(List<TravelModel> value) {
    _travelSpotList = value;
    notifyListeners();
  }

  set travelModel(TravelModel value) {
    _travelModel = value;
    notifyListeners();
  }

  set loadingMgs(String val) {
    _loadingMgs = val;
    notifyListeners();
  }

// void clearFacultyList() {
//   _facultyList.clear();
//   notifyListeners();
// }
  Future<void> addTravelSpot(
      BuildContext context,
      TravelProvider travelProvider,
      TravelModel travelModel,
      File imageFile) async {
    final int timestemp = DateTime.now().millisecond;
    String id = travelModel.spotname! + timestemp.toString();
    final String submitDate = DateFormat("dd-MMM-yyyy/hh:mm:aa")
        .format(DateTime.now());
    firebase_storage.Reference storageReference = firebase_storage
        .FirebaseStorage.instance.ref().child('Travel Spot Img').child(id);
    firebase_storage.UploadTask storageUploadTask = storageReference.putFile(imageFile);
    firebase_storage.TaskSnapshot taskSnapshot;
    storageUploadTask.then((value) {
      taskSnapshot = value;
      taskSnapshot.ref.getDownloadURL().then((newImageDownloadUrl) {
        final image = newImageDownloadUrl;
        FirebaseFirestore.instance.collection('travel_spots').doc(id).set({
          'id': id,
          'spotname': travelModel.spotname,
          'image': image,
          'description': travelModel.tdescription,
          'travelregion': travelModel.travelregion,
          'travelspot': travelModel.travelspot,
          'timestemp': timestemp,
          'submitDate': submitDate,
        });
         Navigator.pop(context);
      }, onError: (error) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              error.toString(),
            )));
      });
    }, onError: (error) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            error.toString(),
          )));
    });
  }

// Future<void> getFaculty() async {
//   //final String id = await getPreferenceId();
//   try {
//     await FirebaseFirestore.instance
//         .collection('faculty')
//         .where('id', isEqualTo: facultyModel.id)
//         .get()
//         .then((snapShot) {
//       _facultyList.clear();
//       snapShot.docChanges.forEach((element) {
//         FacultyModel users = FacultyModel(
//           id: element.doc['id'],
//           fid: element.doc['fid'],
//           fpassword: element.doc['fpassword'],
//           fmembername: element.doc['fmembername'],
//           fphone: element.doc['fphone'],
//           departmentname: element.doc['departmentname'],
//           fimage: element.doc['fimage'],
//           fmemberemail: element.doc['fmemberemail'],
//           fdesignation: element.doc['fdesignation'],
//           facademicqualification: element.doc['facademicqualification'],
//           fteachingarea: element.doc['fteachingarea'],
//           fresearch: element.doc['fresearch'],
//           fjournalpublication: element.doc['fjournalpublication'],
//           submitdate: element.doc['submitdate'],
//           timestamp: element.doc['timestamp'],
//         );
//         _facultyList.add(users);
//       });
//     });
//     // print("Length: " + _facultyList.length.toString());
//     notifyListeners();
//   } catch (error) {
//     error.toString();
//   }
// }
// Future<void> getFacultyByCategory(String departmentname) async{
//   try{
//     await FirebaseFirestore.instance.collection('faculty').where('departmentname', isEqualTo: departmentname).get().then((snapShot){
//       _facultyCategoryList.clear();
//       snapShot.docChanges.forEach((element) {
//         FacultyModel users=FacultyModel(
//           id: element.doc['id'],
//           fid: element.doc['fid'],
//           fpassword: element.doc['fpassword'],
//           fmembername: element.doc['fmembername'],
//           fphone: element.doc['fphone'],
//           departmentname: element.doc['departmentname'],
//           fimage: element.doc['fimage'],
//           fmemberemail: element.doc['fmemberemail'],
//           fdesignation: element.doc['fdesignation'],
//           facademicqualification: element.doc['facademicqualification'],
//           fteachingarea: element.doc['fteachingarea'],
//           fresearch: element.doc['fresearch'],
//           fjournalpublication: element.doc['fjournalpublication'],
//           submitdate: element.doc['submitdate'],
//           timestamp: element.doc['timestamp'],
//         );
//         _facultyCategoryList.add(users);
//       });
//     });
//     notifyListeners();
//     print( _facultyCategoryList.length);
//   }catch(error){'error.toString()';}
// }
}
