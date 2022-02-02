import 'package:float/floating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Text_ROuting extends StatefulWidget {
  const Text_ROuting({Key? key}) : super(key: key);

  @override
  _Text_ROutingState createState() => _Text_ROutingState();
}

class _Text_ROutingState extends State<Text_ROuting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Routing"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => FloatingAction());
                  Navigator.push(context, route);
                },
                child: Text("Text Button")),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        //animatedIcon: AnimatedIcons.menu_home,
        icon: Icons.share,
        label: Text("Share"),
        overlayColor: Colors.yellow,
        overlayOpacity: 0.4,
        children: [
          SpeedDialChild(
              child: Icon(Icons.mail),
              backgroundColor: Colors.red,
              label: "Mail",
              onTap: () => print("Selected Mail......")),
          SpeedDialChild(
              child: Icon(Icons.facebook),
              backgroundColor: Colors.green,
              label: "Facebook"),
          SpeedDialChild(
              child: Icon(Icons.copy),
              backgroundColor: Colors.greenAccent,
              label: "Copy")
        ],
      ),
    );
  }
}
