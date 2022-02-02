import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Image_picker(),
    );
  }
}

class Image_picker extends StatefulWidget {
  const Image_picker({Key? key}) : super(key: key);

  @override
  _Image_pickerState createState() => _Image_pickerState();
}

class _Image_pickerState extends State<Image_picker> {
  File? _image, _image1;
  Future CameraImage(ImageSource source) async {
    final _image = await ImagePicker().pickImage(source: source);
    if (_image == null) return;
    final imageTemporary = File(_image.path);
    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Column(
        children: [
          Column(
            children: [
              _image != null
                  ? ClipOval(
                      child: Image.file(
                        _image!,
                        height: 160,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                    )
                  : FlutterLogo(
                      size: 160,
                    )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  CameraImage(ImageSource.camera);
                },
                child: Icon(Icons.camera),
              ),
              Divider(),
              FloatingActionButton(
                onPressed: () {
                  CameraImage(ImageSource.gallery);
                },
                child: Icon(Icons.photo_library),
              )
            ],
          )
        ],
      ),
    );
  }
}
