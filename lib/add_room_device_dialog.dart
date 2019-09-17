import 'package:flutter/material.dart';

import 'add_device.dart';
import 'add_room.dart';

class AddRoomDeviceDialogBox extends StatefulWidget {
  @override
  _AddRoomDeviceDialogBoxState createState() => _AddRoomDeviceDialogBoxState();
}

class _AddRoomDeviceDialogBoxState extends State<AddRoomDeviceDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleDialog(
        contentPadding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        titlePadding: const EdgeInsets.all(0),
        title: FlatButton(
          padding: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.black,
                iconSize: 35,
              ),
            ],
          ),
        ),
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddRoom()),
                      );
                    },
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Add Room',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddDevice()),
                        );
                    },
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Add Device',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
