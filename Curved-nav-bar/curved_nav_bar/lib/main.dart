// ignore_for_file: prefer_const_constructors

import 'package:curved_nav_bar/One.dart';
import 'package:curved_nav_bar/two.dart';
import 'package:curved_nav_bar/three.dart';
import 'package:curved_nav_bar/four.dart';
import 'package:curved_nav_bar/five.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'One.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CurvedNavBar(),
    );
  }
}

class CurvedNavBar extends StatefulWidget {
  const CurvedNavBar({Key? key}) : super(key: key);

  @override
  _CurvedNavBarState createState() => _CurvedNavBarState();
}

class _CurvedNavBarState extends State<CurvedNavBar> {
  var _page = 0;
  final pages = [One(), Two(), Three(), Four(), Five()];
  // final pages = [One(), Two(), Three(), Four(), Five()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Colors.yellowAccent,
        animationDuration: Duration(milliseconds: 200),
        items: [
          Icon(Icons.access_time),
          Icon(Icons.alarm),
          Icon(Icons.alarm),
          Icon(Icons.settings),
          Icon(Icons.menu)
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      appBar: AppBar(
        title: Text("Curved Navigation Bar"),
      ),
      body: pages[_page],

      // CurvedNavigationBar(
      //     animationDuration: Duration(microseconds: 100),
      //     index: 0,
      //     backgroundColor: Colors.black54,
      //     buttonBackgroundColor: Colors.redAccent,
      //     animationCurve: Curves.easeInCubic,
      //     items: [
      //       Icon(Icons.call),
      //       Icon(Icons.message),
      //       Icon(Icons.alarm),
      //       Icon(Icons.settings),
      //       Icon(Icons.menu)
      //     ]),
    );
  }
}

Five() {}

Three() {}

Four() {}
