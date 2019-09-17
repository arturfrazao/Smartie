import 'package:flutter/material.dart';
import 'package:smartie/bottom_navigation_bar.dart';
import 'notifications.dart';
import 'eletricity_usage.dart';
import 'settings.dart';
import 'add_room_device_dialog.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List _widgetOptions = [
    Icon(Icons.home),
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
    var itd = IconThemeData(color: Colors.grey, opacity: 1, size: 30);
    var abt = AppBarTheme(color: Colors.white, iconTheme: itd);
    var td = ThemeData(
        iconTheme: itd,
        primaryColor: Color.fromRGBO(56, 95, 241, 1),
        accentColor: Color.fromRGBO(249, 149, 135, 1));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: itd,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          'Room',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AddRoomDeviceDialogBox()),
              );
            },
            child: Icon(
              Icons.add_circle_outline,
              color: td.primaryColor,
              size: itd.size,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            semanticContainer: true,
            borderOnForeground: true,
            clipBehavior: Clip.antiAlias,
            elevation: 5,
            child: Image(
              image: AssetImage('assets/living_room.jpg'),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            semanticContainer: true,
            borderOnForeground: true,
            clipBehavior: Clip.antiAlias,
            elevation: 5,
            child: Image(
              image: AssetImage('assets/living_room.jpg'),
            ),
          ),
          _widgetOptions[_currentIndex],
        ],
      ),
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
