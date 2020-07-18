import 'package:flutter/material.dart';
import 'package:trial3/Screens/order.dart';
import 'package:trial3/Constants/visitus.dart';
import 'package:trial3/Screens/temp.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

 String url = "https://maps.app.goo.gl/riAZAQKw5F1oH12q6";

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFF4A4A58),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.4),
                ),
                height: 320,
                child: PageView(
                  children: <Widget>[
                    Text(
                      "Animation containing welcome message and other text messages stacked on images",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  children: <Widget>[
                    Card(
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderScreen(),
                                ),
                              );
                            });
                          },
                          child: Stack(children: <Widget>[
                            Image(
                              image: AssetImage("lib/assets/images/baker2.png"),
                            ),
                            Positioned(
                              left: 30,
                              bottom: 2,
                              child: Text("Ordering"),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Card(
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => launchPlace(url)));
                          },
                          child: Stack(children: <Widget>[
                            Image(
                              image: AssetImage('lib/assets/images/loc.jpg'),
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              child: Text("Visit Us"),
                              bottom: 5,
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Card(
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Temp()));},
                          child: Stack(children: <Widget>[
                            Text("Contact Us"),
                          ]),
                        ),
                      ),
                    ),
                    Card(
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: InkWell(
                          child: Stack(
                            children: <Widget>[
                              Text("Report"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Text("Copyright 2020"),
                bottom: 0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
