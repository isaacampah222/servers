import 'package:flutter/material.dart';
import 'package:trial3/logic/requesting.dart';

final List breadlist = [
  "Butter Bread",
  "Sugar Bread",
  "Wheat Bread",
  "Wheat Bread",
  "White Bread",
  "Brown Bread"
];

class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  Future<OrderRequestList> futureorder;

  @override
  void initState() {
    super.initState();
    futureorder = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightGreen[200],
      body: Stack(
        children: <Widget>[
          // Container(
          //   decoration: BoxDecoration(
          //     image: new DecorationImage(
          //       image: AssetImage("assets/images/mainbg1.jpg"),
          //       fit: BoxFit.fill
          //     ),
          //   ),
          // ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.black.withOpacity(0.2),
                  // image: DecorationImage(
                  //   fit: BoxFit.fill,
                  //   image: AssetImage("assets/images/baker3.jpg"),
                  // ),
                ),
                child: Center(
                  child: FutureBuilder<OrderRequestList>(
                    future: futureorder,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(snapshot.data.ordervalues.toString());
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                      return CircularProgressIndicator();
                    },
                  ),
                ),
                // child: ListView(
                //   children: <Widget>[
                //     b,
                //     // Text("I am a boy")
                //     ListTile(
                //       leading: CircleAvatar(
                //         child: Icon(Icons.add),
                //       ),
                //       title: Text(
                //         "Sugar Bread",
                //       ),
                //       subtitle: Text("7 pieces of 1.50\n2 pieces of 2.0"),
                //       trailing: Icon(Icons.delete),
                //     ),
                //     Divider(
                //       color: Colors.black,
                //     ),
                //     ListTile(
                //       leading: CircleAvatar(
                //         child: Icon(Icons.add),
                //       ),
                //       title: Text(
                //         "Butter Bread",
                //       ),
                //       subtitle: Text("7 pieces of 1.50\n2 pieces of 2.0"),
                //       trailing: Icon(Icons.delete),
                //     ),
                //     Divider(
                //       color: Colors.black,
                //     ),
                //     ListTile(
                //       leading: CircleAvatar(
                //         child: Icon(Icons.add),
                //       ),
                //       title: Text(
                //         "Wheat Bread",

                //       ),
                //       subtitle: Text("7 pieces of 1.50\n2 pieces of 2.0"),
                //       trailing: Icon(Icons.delete),
                //     ),
                //     Divider(
                //       color: Colors.black,
                //     ),
                //   ],
                // ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 200,
                child: RaisedButton(
                  // color: Colors.red[200],
                  color: Colors.black,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Proceed to Checkout",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget b = new Expanded(
  child: ListView.builder(
    itemCount: 2,
    itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.add),
        ),
        title: Text(
          "boy",
        ),
        subtitle: Text("7 pieces of 1.50\n2 pieces of 2.0"),
        trailing: Icon(Icons.delete),
      );
    },
  ),
);
