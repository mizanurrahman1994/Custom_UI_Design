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
      home: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            backgroundColor: Colors.redAccent,
            flexibleSpace: FlexibleSpaceBar(
              //  background: Image.file(file),
              title: Text("SliverappBar"),
              centerTitle: true,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            addDetails("One", "This is One"),
            addDetails("Two", "This is two"),
            addDetails("Three", "This is Three"),
            addDetails("Four", "This is Four"),
            addDetails("Five", "This is Five"),
            addDetails("Six", "This is Six"),
            addDetails("Seven", "This is Seven"),
            addDetails("Eight", "This is Eight"),
            addDetails("Nine", "This is Nine"),
            addDetails("Ten", "This is Ten"),
            addDetails("Eleven", "This is Eleven"),
            addDetails("Twelve", "This is Twelve"),
          ]))
        ],
      )),
    );
  }
}

Widget addDetails(String name, String description) {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    onTap: () {},
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}

// class addDetails extends StatelessWidget {
//   late String name;
//   late String description;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(name),
//       subtitle: Text(description),
//       leading: CircleAvatar(
//         child: Text(name[0]),
//       ),
//     );
//   }
// }
