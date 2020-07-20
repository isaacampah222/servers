import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:trial3/Constants/cardbuilder.dart';
import 'package:trial3/Constants/myDrawer.dart';

import 'cart.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  int radiovalue = 0;
  List<Future> handlers;
  String selectedItem;

  @override
  void initState() {
    super.initState();
    //   handlers = [
    //     handleOrder(),
    //   hihi(context),
    //   handleSettings(),
    //   handleAbout()
    // ];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;

    return Scaffold(
      backgroundColor: Color(0xFF4A4A58),
      body: Stack(
        children: <Widget>[
          // menu(context/*,handlers*/),
          orderPanel(context),
        ],
      ),
    );
  }

  Widget orderPanel(context) {
    final GlobalKey<ScaffoldState> _scaffoldkey =
        new GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: Color(0xFF4A4A58),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: EdgeInsets.only(top: 16, left: 0, right: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Builder(
                    builder: (ctx) => IconButton(
                      icon: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          Scaffold.of(ctx).openDrawer();
                        });
                      },
                    ),
                  ),
                  Text("Alma Customer",
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Cart(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Bread',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
              Container(
                padding: EdgeInsets.only(left: 10),
                // decoration:
                //     BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedItem = "Butter Bread";
                          hihi(context);
                        });
                      },
                      child: cardBuilder("lib/assets/images/butter.jpg",
                          "Butter Bread", 'Prices: 1.60'),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedItem = "Sugar Bread";
                          hihi(context);
                        });
                      },
                      child: cardBuilder(
                          "lib/assets/images/sugar.jpg", "Sugar Bread", '2.00'),
                    ),
                    InkWell(
                      onTap: () {
                        selectedItem = "Tea Bread";
                        hihi(context);
                      },
                      child: cardBuilder(
                          "lib/assets/images/tea.jpg", "Tea Bread", '2.50'),
                    ),
                    InkWell(
                      onTap: () {
                        selectedItem = "Wheat Bread";
                        hihi(context);
                      },
                      child: cardBuilder(
                          "lib/assets/images/wheat.jpg", "Wheat Bread", '4.00'),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedItem = "Brown Bread";
                          hihi(context);
                        });
                      },
                      child: cardBuilder(
                          "lib/assets/images/brown.jpg", "Brown Bread", '4.00'),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedItem = "White Tea Bread";
                          hihi(context);
                        });
                      },
                      child: cardBuilder(
                          "lib/assets/images/white.jpg", "White Bread", '4.00'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Pastries',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
              SizedBox(
                height: 3,
              ),
              Container(
                // decoration:
                //     BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedItem = "Meat Pie";
                          hihi(context);
                        });
                      },
                      child: cardBuilder(
                          "lib/assets/images/meatpie.jpg", "Meat Pie", '2.50'),
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            selectedItem = "Cake";

                            hihi(context);
                          });
                        },
                        child: cardBuilder(
                            "lib/assets/images/cake.jpg", "Cake", '1.50')),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedItem = "Cookies";
                          hihi(context);
                        });
                      },
                      child: cardBuilder(
                          "lib/assets/images/cookies.jpg", "Cookies", '1.60'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Place your special order describing what you want",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: 5, left: 10, right: 10, top: 10),
                      child: TextFormField(
                        maxLines: 8,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MaterialButton(
                      child: Text("Place Order"),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> hihi(context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          backgroundColor: Colors.white.withOpacity(0.7),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              int alllval = -1;
              String selectedradio;
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    selectedItem,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Text("Unit Prize:", style: TextStyle(color: Colors.black)),
                  // Row(
                  //   children: <Widget>[
                  //     Radio(
                  //       value: 0,
                  //       groupValue: radiovalue,
                  //       onChanged: (int value) {
                  //         setState(
                  //           () {
                  //             radiovalue = value;
                  //           },
                  //         );
                  //       },
                  //     ),
                  //     Text("1.50")
                  //   ],
                  // ),
                  // Row(
                  //   children: <Widget>[
                  //     Radio(
                  //       value: 1,
                  //       groupValue: radiovalue,
                  //       onChanged: (int value) {
                  //         setState(
                  //           () {
                  //             radiovalue = value;
                  //           },
                  //         );
                  //       },
                  //     ),
                  //     Text("2.00")
                  //   ],
                  // ),
                  // Row(
                  //   children: <Widget>[
                  //     Radio(
                  //       value: 2,
                  //       groupValue: radiovalue,
                  //       onChanged: (int value) {
                  //         setState(
                  //           () {
                  //             radiovalue = value;
                  //           },
                  //         );
                  //       },
                  //     ),
                  //     Text("2.50")
                  //   ],
                  // ),
                  Column(
                      children: alertList
                          .map((e) => RadioListTile(
                              title: Text("${e.amount}"),
                              value: e.index,
                              groupValue: alllval,
                              onChanged: (val) {
                                setState(() {
                                  // selectedradio = e.amount;
                                  alllval = e.index;
                                });
                              }))
                          .toList()),
                  Text(
                    "Quantity:",
                    style: TextStyle(color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40, bottom: 20),
                    child: TextField(
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      DialogButton(
                          width: 100, child: Text("Save"), onPressed: null),
                      DialogButton(
                          width: 100,
                          child: Text("Cancel"),
                          onPressed: () {
                            Navigator.pop(context);
                          })
                    ],
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class RadioTileContent {
  String amount;
  int index;
  RadioTileContent({this.amount, this.index});
}

List<RadioTileContent> alertList = [
  RadioTileContent(
    amount: "1.60",
    index: 1,
  ),
  RadioTileContent(
    amount: "2.00",
    index: 2,
  ),
  RadioTileContent(
    amount: "2.50",
    index: 3,
  )
];
