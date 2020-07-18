import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

launchPlace(String url) async{
  if (await canLaunch(url)){
      await launch(url);
  }else
  {

  }
}