import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Upload_Image extends StatefulWidget {
  const Upload_Image({Key? key}) : super(key: key);

  @override
  _Upload_ImageState createState() => _Upload_ImageState();
}


class _Upload_ImageState extends State<Upload_Image> {
  ImagePicker image = ImagePicker();
  File? file;
  String uri = "";
  Future CameraImage() async {
    var img = await image.pickImage(source: ImageSource.camera);
    setState((){
      file = File(img!.path);
    });
  }
  Future GalleryImage() async {
    var img = await image.pickImage(source: ImageSource.gallery);
    setState((){
      file = File(img!.path);
    });
  }
 Future <void> UploadImage() async {
    String imageName = DateTime.now().microsecondsSinceEpoch.toString();
    var imagefile = FirebaseStorage.instance.ref().child(imageName).child("/.jpg");
    UploadTask task = imagefile.putFile(file!);
    TaskSnapshot snapshot = await task;

    //for download the image uri
   uri = await snapshot.ref.getDownloadURL();

   // store the image uri into the firestore database
   await FirebaseFirestore.instance.collection("images").doc().set({"img" : uri});
   print(uri);
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Upload Image'), centerTitle: true),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(),
          Center(
            child: CircleAvatar(
               radius: 150,
              backgroundImage: file == null
                ? AssetImage("images/sajek1.jpg")
                  : FileImage(File(file!.path)) as ImageProvider,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                   CameraImage();
                },
                child: Text("Camera"),
              ),
              SizedBox(width: 5,),
              Container(
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: (){
                         GalleryImage();
                      },
                      child: Text("Galery"),
                    )
                  ],
                ),
              ),
              SizedBox(width: 5 ,),
              Container(
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        UploadImage();
                      },
                      child: Text("Upload Image"),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          StreamBuilder(
            stream: FirebaseFirestore.instance.collection("images").snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
              if(snapshot.hasData){
                return GridView.builder(
                  shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (contex, index){
                      QueryDocumentSnapshot querysnapshot = snapshot.data!.docs[index];
                      // print("${querysnapshot['img']}");
                      return InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => View(
                              url: querysnapshot['img'],
                            ))
                          );
                        },
                        child: Hero(
                          tag: querysnapshot['img'],
                          child: Card(
                            child: Image.network(querysnapshot['img'], fit: BoxFit.fill),
                          ),
                        ),
                      );
                    });
              }
              return Center(child: CircularProgressIndicator());
            },
          )

        ],
      ),
    );
  }
}

class View extends StatelessWidget {
  final url;

  View({this.url});

  @override
  Widget build(BuildContext context) {
    return Hero(tag: url, child: Image.network(url));
  }
}

