import 'package:flutter/material.dart';

class Three extends StatefulWidget {
  const Three({Key? key}) : super(key: key);

  @override
  _ThreeState createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Three"),
    );
  }
}
