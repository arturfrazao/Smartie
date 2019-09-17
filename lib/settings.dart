import 'package:flutter/material.dart';

import 'login.dart';


class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int index = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: FlatButton(
           child: Text('Sign Out'),
          onPressed:  () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Login()),
            );
          },
        ),
      ),
    );
  }
}
