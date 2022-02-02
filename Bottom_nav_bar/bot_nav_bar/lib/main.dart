import 'package:bot_nav_bar/call.dart';
import 'package:bot_nav_bar/home.dart';
import 'package:bot_nav_bar/message.dart';
import 'package:bot_nav_bar/radio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentindex = 0;
  final pages = [Message(), Home(), Call(), radio()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: pages[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.redAccent,
        unselectedIconTheme: IconThemeData(color: Colors.blue),
        unselectedLabelStyle: TextStyle(color: Colors.yellow),
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Message",
              backgroundColor: Colors.redAccent),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
          BottomNavigationBarItem(icon: Icon(Icons.radio), label: "Radio"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          }); //change the state
        },
      ),
    );
  }
}
