import 'package:flutter/material.dart';

Container cardBuilder(String imageloc, String cardheader, String price) {
  return Container(

    width: 140,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Card(
      color:  Color(0xFF4A4A58).withOpacity(0.5),
      child: Wrap(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
            height: 130,
            width: 130,
            child: Image(
              image: AssetImage(imageloc),
              fit: BoxFit.fill,
            ),
          ),
          ListTile(
            title: Text(cardheader, style: TextStyle(color: Colors.white),),
            subtitle: Text(price,style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    ),
  );
}
