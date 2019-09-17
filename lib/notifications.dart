import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(tabs: <Widget>[
          FlatButton(onPressed: null, child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Notification 1'),
                leading: Icon(Icons.notifications),
              ),
              FlatButton(onPressed: null, child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('Notification 2'),
                    leading: Icon(Icons.notifications),

                  ),
                ],
              ))
            ],
          ))
        ],),
      ),
    );
  }
}
