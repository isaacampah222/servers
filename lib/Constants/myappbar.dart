import 'package:flutter/material.dart';
import 'package:trial3/Screens/cart.dart';
import 'package:trial3/Screens/report.dart';

class MyAppBar extends AppBar {
  final k = GlobalKey<ScaffoldState>();

  MyAppBar({Key key, BuildContext c, Widget leading, String title})
      : super(
          key: key,
          leading: leading,
          title: Center(child: Text(title,style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
          backgroundColor: Color(0xFF4A4A58),
          actions: <Widget>[
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  c,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                );
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  c,
                  MaterialPageRoute(
                    builder: (context) => Report(),
                  ),
                );
              },
              icon: Icon(
                Icons.add_comment,
                color: Colors.white,
              ),
            ),
           
          ],
        );
}