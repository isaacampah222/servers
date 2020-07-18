import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Report extends StatelessWidget {
  const Report({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.withOpacity(.9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 30,
                      child: SizedBox(
                        height: 250,
                        child: SvgPicture.asset(
                          "assets/svgs/quest1.svg",
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 130,
                      top: 30,
                      child: Text(
                        "Is there a problem?\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 150,
                      top: 70,
                      child: Text(
                        "Care to share \nwith us?\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 150,
                      top: 150,
                      child: Text(
                        "Please let us know\n in the section\n below",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: TextFormField(
              autocorrect: true,
              decoration: InputDecoration(
                fillColor: Colors.blue.withOpacity(0.9),
                hintText: "Please share your problem with us",
                border: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  // borderSide: BorderSide(color: Colors.black),
                ),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 10,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: RaisedButton(
              color: Colors.blue,
              padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Send",
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
