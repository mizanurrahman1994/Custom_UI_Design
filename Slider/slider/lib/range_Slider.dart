import 'package:flutter/material.dart';

class Range_Slider extends StatefulWidget {
  const Range_Slider({Key? key}) : super(key: key);

  @override
  _Range_SliderState createState() => _Range_SliderState();
}

class _Range_SliderState extends State<Range_Slider> {
  double start = 10.0;
  double end = 30.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Range Slider"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () {}, child: Text("Range Slider")),
            RangeSlider(
                min: 10,
                max: 60,
                divisions: 10,
                values: RangeValues(start, end),
                labels: RangeLabels(
                    start.round().toString(), end.round().toString()),
                onChanged: (value) {
                  setState(() {
                    start = value.start;
                    end = value.end;
                  });
                })
          ],
        ),
      ),
    );
  }
}
