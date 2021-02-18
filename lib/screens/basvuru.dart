import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Basvuru extends StatefulWidget {
  @override
  _BasvuruState createState() => _BasvuruState();
}

class _BasvuruState extends State<Basvuru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Başvurular',
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
        children: <Widget> [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 15),
              Expanded(
                child: ButtonTheme( //https://www.codegrepper.com/code-examples/dart/how+to+increase+the+size+of+raised+button+in+flutter
                  height: 100,
                  child: RaisedButton(
                    color: Colors.deepOrangeAccent,
                    onPressed: _launch1,
                    child: Text(
                      'Blog Ekibi',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: ButtonTheme(
                  height: 100,
                  child: RaisedButton(
                    color: Colors.blueGrey,
                    onPressed: _launch2,
                    child: Text(
                      'Öğretmen İletişim Ağı',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 15),
              Expanded(
                child: ButtonTheme(
                  height: 100,
                  child: RaisedButton(
                    color: Colors.teal,
                    onPressed: _launch3,
                    child: Text(
                      'Atölye: Araştırmacı Ruhu Yüksek Çocuklar Yetiştirmek',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: ButtonTheme(
                  height: 100,
                  child: RaisedButton(
                    onPressed: _launch4,
                    child: Text(
                      'Atölye: Dijital Araçlarla Zenginleştirilmiş Ders Tasarımları',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
            ],
          ),
          SizedBox(height: 20),
        ]
      ),
    );
  }
}

_launch1() async { //https://stackoverflow.com/questions/43149055/how-do-i-open-a-web-browser-url-from-my-flutter-code
  const url = 'https://docs.google.com/forms/d/1syLbl62vxNFbiENoXopxo-_3C2YoN9-od34ggzPSQxs/viewform?edit_requested=true';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launch2() async {
  const url = 'https://bambugep.org/basvuru/ogretmen-iletisim-agi/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launch3() async {
  const url = 'https://bambugep.org/basvuru/arastirmaci-ruhu-yuksek-cocuklar-yetistirmek/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launch4() async {
  const url = 'https://bambugep.org/basvuru/digital-araclarla-zenginlestirilmis-ders-tasarimlari/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}