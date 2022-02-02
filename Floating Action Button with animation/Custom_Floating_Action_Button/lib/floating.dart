import 'package:flutter/material.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Floating"),
        actions: [],
      ),
      body: null,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
          tooltip: "Click",
          elevation: 10,
          hoverElevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.black87, width: 3)),
          icon: Icon(Icons.add_a_photo),
          hoverColor: Colors.yellowAccent,
          onPressed: () {
            print("This is Floating extended button");
          },
          label: Text("Floating")),
    );
  }
}
