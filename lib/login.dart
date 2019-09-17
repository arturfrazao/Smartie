import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartie/home_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _username;
  var _password;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: ListView(
        children: <Widget>[
          Container(
            child: SizedBox(
              width: 500,
              height: 350,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hi, There!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Login to continue:',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Email or Username',
                hintStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
                alignLabelWithHint: true,
                enabledBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(
                    color: Colors.orange,
                  ),
                ),
              ),
              enabled: true,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                enabledBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(
                    color: Colors.orange,
                  ),
                ),
                alignLabelWithHint: true,
              ),
              enabled: true,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              clipBehavior: Clip.antiAlias,
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: null,
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                FlatButton(
                    onPressed: null,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
