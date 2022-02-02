import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider/image_slider.dart';
import 'package:slider/range_Slider.dart';
import 'package:slider/slider.dart';

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
      home: slider(),
    );
  }
}

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider, Range Slider, Image Slider"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) {
                    return MainSlider();
                  });
                  Navigator.push(context, route);
                },
                child: Text("Slider")),
            ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) {
                    return Range_Slider();
                  });
                  Navigator.push(context, route);
                },
                child: Text("Range_Slider")),
            ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) {
                    return Image_Slider();
                  });
                  Navigator.push(context, route);
                },
                child: Text("Image_Slider")),
          ],
        ),
      ),
    );
  }
}
