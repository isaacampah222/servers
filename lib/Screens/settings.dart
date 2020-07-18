import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List<String> settingItems = [
    "Account and Privacy",
    "Privacy",
    "Location",
    "Payment Methods",
    "Send App FeedBack",
    "Version",
    "Logout",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF4A4A58),
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Color(0xFF4A4A58).withOpacity(0.2),
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    "${settingItems[index]}",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                );
              },
              itemCount: settingItems.length,
            ),
          ),
        ),
      ),
    );
  }
}
