import 'package:flutter/material.dart';
import 'package:trial3/Screens/login.dart';

import 'Screens/order.dart';
import 'Screens/welcome.dart';

void main()=>runApp(EasyBuy());

class EasyBuy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Easy Buy",
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
