import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pakshiapp/WikipediaExplorer.dart';
import 'package:tflite/tflite.dart';

class PredictionPage extends StatefulWidget {
  const PredictionPage({Key? key,required this.image}) : super(key: key);
  final XFile image;

  @override
  PredictionPageState createState() => PredictionPageState();
}

class PredictionPageState extends State<PredictionPage> {

  // late File _image;
  late List _results;
  bool imageSelect = false;

  @override
  void initState() {
    super.initState();
    loadModel();
  }

  Future loadModel() async {
    Tflite.close();
    String res;
    res = (await Tflite.loadModel(
        model: "assets/birds_450_quant_image_inceptionV3_metadata.tflite",
        labels: "assets/labels_450.txt"))!;
    print("Models loading status: $res");
  }

  Future imageClassification(File image) async {
    final List? recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 6,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _results = recognitions!;
      widget.image;
      imageSelect = true;
    });
  }
  late var name= _results[0]['label'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Prediction Page"),
          centerTitle: true,
          backgroundColor: Colors.lightGreen[900],
        ),
        body: ListView(
            children: [
              Container(
    margin: const EdgeInsets.all(10),
                color: const Color(0xFF33691E),
    child: Image.file(File(widget.image!.path)),
    ),

    SingleChildScrollView(
    child: Column(
    children: (imageSelect)?_results.map((result) {
    return Card(
    child: Container(
    margin: EdgeInsets.all(10),
    child: Text(
    "${result['label']} - ${result['confidence'].toStringAsFixed(2)}",
    style: const TextStyle(color: Colors.black,
    fontSize: 20),
    ),
    ),
    );
    }).toList():[],

    ),
    ),

    RawMaterialButton(
    fillColor: const Color(0xFF64DD17),
    elevation: 0.0,
    padding: const EdgeInsets.symmetric(vertical: 18.0),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0)),
    onPressed:() async{
    // if(widget.image!=null)
    //   {
    imageClassification(File(widget.image!.path));

    // }
    },
    child: const Text("Predict",style: TextStyle(color: Colors.white,
    fontSize: 18.0,))
    ),
              RawMaterialButton(
                  fillColor: const Color(0xFF64DD17),
                  elevation: 0.0,
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  onPressed:() async{
                    // if(widget.image!=null)
                    //   {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:( context)=> WikipediaExplorer(name:name.toString().toLowerCase())));
                    // }
                  },
                  child: const Text("What's that?",style: TextStyle(color: Colors.white,
                    fontSize: 18.0,))
              ),
            ],
    // floatingActionButton: FloatingActionButton(
    //   onPressed: ()
    //     {
    //       imageClassification(File(widget.image!.path));
    //     },
    //   tooltip: "Pick Image",
    //   child: const Icon(Icons.image),
    ),
    );
  }
}