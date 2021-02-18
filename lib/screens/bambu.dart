import 'package:flutter/material.dart';

class Bambu extends StatefulWidget {
  @override
  _BambuState createState() => _BambuState();
}

class _BambuState extends State<Bambu>
    with AutomaticKeepAliveClientMixin{ //To make the page persistent.
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BAMBU',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff95B73C),
        brightness: Brightness.light,
        shadowColor: Color(0xff505254),
        toolbarHeight: 75,
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
