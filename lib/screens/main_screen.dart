import 'package:cet301project_bambu/screens/bambu.dart';
import 'package:cet301project_bambu/screens/basvuru.dart';
import 'package:cet301project_bambu/screens/dergi.dart';
import 'package:cet301project_bambu/screens/yardim.dart';
import 'package:cet301project_bambu/screens/blog.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  PageController _pageController = PageController();

  List<Widget> _screens = [
    Bambu(), Blog(), Dergi(), Basvuru(), Yardim()
  ];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _currentIndex = 0;
  final tabs = [
    Center(child: Text('BAMBU'),),
    Center(child: Text('Blog'),),
    Center(child: Text('Dergi'),),
    Center(child: Text('Başvuru'),),
    Center(child: Text('Yardım'),),
  ];

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged:  _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar( //Tutorial at https://youtu.be/elLkVWt7gRM
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false, //To hide the labels: https://stackoverflow.com/questions/52182384/flutter-how-to-hide-remove-title-of-bottomnavigationbaritem/56644635
        iconSize: 25,

        onTap: _onItemTapped,

        items: [
           BottomNavigationBarItem(
             icon: ImageIcon(
               AssetImage('images/logoo.png'),
                   color: _selectedIndex == 0 ? Color(0xffA0B351) : Colors.white,
                   //color: Color(0xffA0B351),
             ),
             label: 'BAMBU', //The title widget taught in the video  tutorial changed to label.
             backgroundColor: Color(0xff505254),
           ),
           BottomNavigationBarItem(
             icon: ImageIcon(
                 AssetImage('images/B.png')
             ),
             label: 'Blog',
             backgroundColor: Color(0xff505254),
           ),
           BottomNavigationBarItem(
             icon: ImageIcon(
                 AssetImage('images/Mag.png')
             ),
             label: 'Dergi',
             backgroundColor: Color(0xff505254),
           ),
           BottomNavigationBarItem(
             icon: ImageIcon(
                 AssetImage('images/application.png'),
                     color: Colors.white,
             ),
             label: 'Başvuru',
             backgroundColor: Color(0xff505254),
           ),
           BottomNavigationBarItem(
             icon: ImageIcon(
                 AssetImage('images/help.png')
             ),
             label: 'Yardım',
             backgroundColor: Color(0xff505254),
           ),
        ],
      ),
    );
  }
}
