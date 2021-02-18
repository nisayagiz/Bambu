import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Yardim extends StatefulWidget {
  @override
  _YardimState createState() => _YardimState();
}

class _YardimState extends State<Yardim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Yardım',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: Color(0xff95B73C),
        brightness: Brightness.light,
        shadowColor: Color(0xff505254),
        toolbarHeight: 75,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: _openMessenger,
          child: Text(
            'Bize yaz!'
          ),
        ),
      ),
    );
  }
}

_openMessenger() async {
  const url = 'http://m.me/bambuegitim'; //https://stackoverflow.com/questions/50672710/how-to-launch-whatsapp-and-facebook-messenger-window-from-flutter-to-point-to-a/50672986
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}