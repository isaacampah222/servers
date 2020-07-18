import 'package:flutter/material.dart';

class About extends StatefulWidget {
  About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About"),
        backgroundColor: Color(0xFF4A4A58),),
      body: Container(
       color: Color(0xFF4A4A58),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            CircleAvatar(
              radius: 80,
            ),
            SizedBox(height: 20),
            Wrap(children: <Widget>[
              Text(
                "lsdkfjdlkfjsdlkfjlflsdkjlskdjflssdfjlkdsflsdkfsdldfsdfffffffdddddddddddddddffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdflkjsdl ksl kjfsdl kfjf ;sakf;dlk n;klkfdslakfn sdf ddfkj lskfjlgj fdl jfdlkg fdkjgdflkdlgj dfkgjldgjdfkgj dlfjljflk dlfg lfdkg ldf glkdfjg kjjgslgrekgj eorjweornvfdmvnfo gerojgegjerk ffffffffffffffffffffffffffffffffffffffffffffffffffkjflskdjflsdkjflsdkfldsakdslkfjsdlkjdlfkjdlgjdfljsd sdfhkj hwef ef fj rhfk jdsfj srk ",
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              )
            ])
          ],
        ),
      ),
    );
  }
}
