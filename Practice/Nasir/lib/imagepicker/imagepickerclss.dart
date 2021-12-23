import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class ImagePickerClass extends StatefulWidget {
  const ImagePickerClass({Key? key}) : super(key: key);

  @override
  _ImagePickerClassState createState() => _ImagePickerClassState();
}

class _ImagePickerClassState extends State<ImagePickerClass> {
  File? _image;
  ImagePicker picking = ImagePicker();
  Future CameraImage() async{
    final pickFile =  await picking.getImage(source:ImageSource.camera,
    maxHeight: 300, maxWidth: 300,);
    setState(() {
      _image = File(pickFile!.path);
    });
  }
  Future GalleryImage() async{
    final pickFile =  await picking.pickImage(source:ImageSource.gallery,
      maxHeight: 300, maxWidth: 300,);
    setState(() {
      _image = File(pickFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.blue,
              alignment: Alignment.center,
              child: _image == null?Text("Pick your Picture"):Image.file(_image!),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed:CameraImage,
                  child: Icon(Icons.camera),
                ),
                SizedBox(width: 20,),
                RaisedButton(
                  onPressed: GalleryImage,
                  child: Icon(Icons.add_circle),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
