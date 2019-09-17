import 'package:flutter/material.dart';

import 'home_page.dart';
import 'notifications.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}


class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  List _widgetOptions = [
    HomePage(),
    Notifications(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      var _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _widgetOptions[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Notifications'),
            icon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            title: Text('Usage'),
            icon: Icon(Icons.data_usage),
          ),
          BottomNavigationBarItem(
            title: Text('Settings'),
            icon: Icon(Icons.settings),
          ),
        ],
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
      ),
    );
  }
}
