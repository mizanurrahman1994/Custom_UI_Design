import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      home: SnackBar_RichText(),
    );
  }
}

class SnackBar_RichText extends StatefulWidget {
  const SnackBar_RichText({Key? key}) : super(key: key);

  @override
  _SnackBar_RichTextState createState() => _SnackBar_RichTextState();
}

class _SnackBar_RichTextState extends State<SnackBar_RichText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar && RichText"),
      ),
      body: Builder(builder: (context) {
        return Center(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("This is SnackBar",
                      style: TextStyle(
                        backgroundColor: Colors.black,
                      )),
                  backgroundColor: Colors.yellow,
                  duration: Duration(seconds: 10),
                  action: SnackBarAction(label: "Ok", onPressed: () {}),
                ));
              },
              child: Text(
                "Ok",
                style: TextStyle(backgroundColor: Colors.black),
              )),
        );
      }),
    );
  }
}
