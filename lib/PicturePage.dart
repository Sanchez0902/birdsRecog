import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;
//import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
import 'dart:io';

import 'package:pakshiapp/PredictionPage.dart';


class PicturePage extends StatefulWidget {
  const PicturePage({Key? key}) : super(key:key);


  @override
  PicturePageState createState() => PicturePageState();
}

class PicturePageState extends State<PicturePage>
{

  final picker = ImagePicker();
  File? _image;
  Image? _imageWidget;
  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    XFile file = new XFile(pickedFile!.path);
    setState(() {
      _image = File(pickedFile!.path);
      _imageWidget = Image.file(_image!);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => PredictionPage(image: file)));
    }
    );
  }
  Future getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    XFile file = new XFile(pickedFile!.path);
    setState(() {
      _image = File(pickedFile!.path);
      _imageWidget = Image.file(_image!);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => PredictionPage(image: file)));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Picture page'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen[900],
      ),

      body: Column(
        children:<Widget>[
          Center(
            child: _image == null
                ? Text('No image selected.')
                : Container(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height / 2),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: _imageWidget,
            ),
          ),
          SizedBox(
            height: 36,
          ),
          ElevatedButton(
            onPressed: () {
              getImageFromGallery();
            },
            child: Text(
              'Gallery',
              style: TextStyle(color: Colors.white, fontSize: 25),

            ),

          ),
          ElevatedButton(
            onPressed: () {
              getImageFromCamera();
            },
            child:

            Text('Camera',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}