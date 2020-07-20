import 'package:url_launcher/url_launcher.dart';

launchPlace(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {}
}
