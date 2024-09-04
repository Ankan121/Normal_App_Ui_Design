import 'package:flutter/material.dart';
import 'package:normal_app_ui/Favarite_Screen/favarite_page.dart';
import 'package:normal_app_ui/Profile_Screen/profile_page.dart';

import 'Details_screen/details_page.dart';
import 'Home_Screen/home_page.dart';

class Navigation_Page extends StatefulWidget {
  const Navigation_Page({super.key});

  @override
  State<Navigation_Page> createState() => _Navigation_PageState();
}

class _Navigation_PageState extends State<Navigation_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Home_Page(),
    Favarite_Page(),
    Details_page(),
    Profile_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: Colors.black),
            label: 'Favarite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details,color: Colors.black),
            label: 'Details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,color: Colors.black),
            label: 'Profile',
          ),
        ],
        fixedColor: Colors.blue,
      ),
    );
  }
}

