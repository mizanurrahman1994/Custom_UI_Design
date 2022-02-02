import 'package:flutter/material.dart';
import 'package:slider/main.dart';

class MainSlider extends StatefulWidget {
  const MainSlider({Key? key}) : super(key: key);

  @override
  _MainSliderState createState() => _MainSliderState();
}

class _MainSliderState extends State<MainSlider> {
  double _value = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Slider Button",
                    style: TextStyle(fontSize: _value),
                  )),
              Slider(
                  min: 20,
                  max: 50,
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
