import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Dergi extends StatefulWidget {
  @override
  _DergiState createState() => _DergiState();
}

class _DergiState extends State<Dergi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dergi',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(35),
            child: Text(
              'Bambüs\nÇocuk Dergisi Yayında!',
              style: TextStyle(
                fontFamily: 'RalewayHeavy',
                fontSize: 40,
                color: Colors.redAccent,
              ),
            ),
          ),
          RaisedButton(
            onPressed: _openMag,
            color: Colors.redAccent,
            child: Text(
              'Okumak için tıkla!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_openMag() async {
  const url = 'https://www.yumpu.com/xx/document/read/65188439/bambusdergi'; //https://stackoverflow.com/questions/50672710/how-to-launch-whatsapp-and-facebook-messenger-window-from-flutter-to-point-to-a/50672986
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}