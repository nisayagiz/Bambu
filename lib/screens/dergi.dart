import 'package:flutter/material.dart';

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
    );
  }
}
