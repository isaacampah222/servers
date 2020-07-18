import 'package:flutter/material.dart';

Widget menu(context/*, List<Future> a*/) {
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

  return Drawer(
    
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
                  width: 150,
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
            left: 10,
            child: Align(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 400,
                    width: 200,
                    child: ListView.separated(
                      itemBuilder: (context, int index) {
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
                            // onTap: a[index];
                            
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
  );
}
