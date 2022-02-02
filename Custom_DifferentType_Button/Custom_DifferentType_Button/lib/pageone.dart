import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Course details"),
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.backpack)),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Dark")),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Border Radius"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      elevation: 30,
                      shadowColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () {}, child: Text("This is outline Button")),
                  TextButton(
                      onPressed: () {}, child: Text("This is text Button")),

                  // Text button with side or border
                  TextButton(
                    onPressed: () {},
                    child: Text("Side text button"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        side: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid,
                        )),
                  ),

                  //without circle facebook button
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.facebook),
                      label: Text("Facebook"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      )),

                  //An Icon without any label or text
                  //circle facebook button
                  /*
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.facebook,
                      size: 40.0,
                      color: Colors.blue,
                    ),
                  ),
                  */

                  //Without border settings button
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                      ),
                      label: Text(
                        "Settings",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),

                  //Settings icon with border
                  /*
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        width: 2,
                        color: Colors.red,
                      ),
                    ),
                    child: Icon(
                      Icons.settings,
                      size: 30.0,
                    ),
                  ),
                  */

                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bluetooth),
                    tooltip: 'Toogle Bluetooth',
                    iconSize: 30,
                  ),

                  IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      )),

                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.settings),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(18.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ]),
          )),
    );
  }
}
