import 'package:flutter/material.dart';
import 'package:trial3/Screens/welcome.dart';
import 'package:trial3/logic/requesting.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  TextEditingController usernamecontroller, passwordcontroller;

  @override
  void dispose() {
    usernamecontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    usernamecontroller = new TextEditingController();
    passwordcontroller = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  ),
                ),
                MaterialButton(
                  child: Text("Login"),
                  onPressed: () {
                    String username = usernamecontroller.text;
                    String password = passwordcontroller.text;
                    String b =
                        '{"username": "$username", "password":"$password"}';
                    var scode = signIn(b);
                    print(scode);
                    if (scode == 200) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomeScreen()));
                    }
                  },
                )
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 120,
            child: InkWell(
              child: Text(
                "Register Here",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
