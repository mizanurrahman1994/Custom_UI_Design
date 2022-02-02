import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator".toUpperCase()),
        centerTitle: true,
        actions: [Icon(Icons.monochrome_photos)],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //1st card
                      Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 180,
                          padding: EdgeInsets.all(8.0),
                          width: MediaQuery.of(context).size.width / 2 - 26,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Age (In Year)",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "18",
                                style: TextStyle(
                                    fontSize: 48, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        primary:
                                            Colors.white.withOpacity(0.25)),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.purple,
                                      size: 45,
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white.withOpacity(0.25),
                                        shape: CircleBorder(),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.purple,
                                        size: 45,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                      //2nd card
                      Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 180,
                          padding: EdgeInsets.all(6),
                          width: MediaQuery.of(context).size.width / 2 - 26,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Weight(Kg)",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "50",
                                style: TextStyle(
                                    fontSize: 48, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(Icons.remove,
                                          color: Colors.purple, size: 45),
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Colors.white.withOpacity(0.25),
                                          shape: CircleBorder()),
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            primary:
                                                Colors.white.withOpacity(0.25),
                                            shape: CircleBorder()),
                                        child: Icon(Icons.add,
                                            color: Colors.purple, size: 48))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              //2nd big container
              Card(
                elevation: 10,
                child: Container(
                  padding: EdgeInsetsDirectional.all(15),
                  height: 250,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 36,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.purple.withOpacity(.20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("cm"),
                                Switch(
                                  value: true,
                                  onChanged: (bool isSelected) {},
                                  activeColor: Colors.purple,
                                ),
                                Text("ft")
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Height",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(
                            elevation: 10,
                            shadowColor: Colors.black.withOpacity(.25),
                            child: Container(
                              width: 150,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.withOpacity(.25)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "48",
                                    style: TextStyle(
                                        fontSize: 48,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.arrow_downward,
                                    size: 40,
                                  )
                                ],
                              ),
                            ),
                          ),

                          //2nd card

                          Card(
                            elevation: 10,
                            shadowColor: Colors.black.withOpacity(.25),
                            child: Container(
                              width: 150,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.withOpacity(.25)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '8"',
                                    style: TextStyle(
                                        fontSize: 48,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.arrow_downward,
                                    size: 40,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //3rd big container

              Container(
                height: 150,
                child: Card(
                  elevation: 10,
                  child: Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "Gender",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "I'm",
                                style: TextStyle(
                                    fontSize: 48, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Female",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Switch(
                                value: true,
                                onChanged: (bool isSelected) {},
                                activeColor: Colors.purple,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                child: Text("CALCULATE"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
