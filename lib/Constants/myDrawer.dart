import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:trial3/Screens/about.dart';
import 'package:trial3/Screens/settings.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawer createState() => _MyDrawer();
}

class _MyDrawer extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    List<Icon> myIcons = [
      Icon(
        Icons.add_shopping_cart,
        color: Colors.white,
      ),
      Icon(
        Icons.call,
        color: Colors.white,
      ),
      Icon(
        Icons.settings,
        color: Colors.white,
      ),
      Icon(
        Icons.question_answer,
        color: Colors.white,
      ),
    ];

    List<String> myMenuList = [
      "Place an Order",
      "Direct Call",
      "Settings",
      "About",
    ];

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Color(0xFF4A4A58)),
      child: Drawer(
        child: Padding(
          padding: EdgeInsets.only(left: 16),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 40,
                left: 30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 80,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Text(
                          "Username",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 60),
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 200,
                      child: Divider(
                        color: Colors.white,
                        height: 5,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 60,
                left: 0,
                child: Align(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 400,
                        width: 250,
                        child: ListView.separated(
                          itemBuilder: (context, int index) {
                            var menuitem = myMenuList[index];
                            // return ListTile(
                            //   title: Text(
                            //     "${myMenuList[index]}",
                            //     style: TextStyle(fontSize: 20, color: Colors.white),
                            //   ),
                            //   leading: myIcons[index],
                            //   // onTap:,
                            // );
                            return Container(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: Colors.white.withOpacity(0.1)),
                              child: InkWell(
                                onTap: () {
                                  handleListTap(menuitem);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    myIcons[index],
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "${myMenuList[index]}",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 30,
                            );
                          },
                          itemCount: myMenuList.length,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void handleListTap(String name) {
    switch (name) {
      case "Place an order":
      Navigator.pop(context);
        break;
      case "Direct Call":
        setState(() {
          return Alert(
              context: context,
              title: "Choose Number",
              content: Column(
                children: <Widget>[Text("0245898003")],
              ),
              buttons: [
                DialogButton(
                  child: Text("Cancel"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                DialogButton(
                    child: Text("Call"),
                    onPressed: () {
                      launch("tel:///02545898003");
                    })
              ]).show();
        });
        break;
        case "Settings":
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
        break;
        case "About":
        Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
        break;
      default:
    }
  }
}
