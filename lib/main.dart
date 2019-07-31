import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/second_layer.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
        debugShowCheckedModeBanner: false,
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Device Orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Stack(
            children: <Widget>[
              // Background
              Container(
                height: MediaQuery.of(context).size.height,
                child: Image.network(
                  "https://images.unsplash.com/photo-1491927570842-0261e477d937?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              // Gradient
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.purple.withOpacity(.6),
                      Colors.blue.withOpacity(.3),
                    ],
                  ),
                ),
              ),
              // Title Login Page
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100, horizontal: 24.5),
                child: Text(
                  'Enter Premium Sounds',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              // Username Column
              Padding(
                padding: EdgeInsets.symmetric(vertical: 240, horizontal: 50),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    // border: InputBorder.none,
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.all(15),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              // Password Column
              Padding(
                padding: EdgeInsets.only(top: 305, left: 50, right: 50),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    // border: InputBorder.none,
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              // Login Button
              Padding(
                padding: EdgeInsets.only(top: 380, left: 50, right: 50),
                child: Container(
                  width: 305,
                  height: 50,
                  decoration: BoxDecoration(),
                  child: RaisedButton(
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    textColor: Colors.white,
                    color: Color(0xFFF7C6BD7),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SecondLayer()));
                    },
                  ),
                ),
              ),
              // Forgot Password Button
              Padding(
                padding: EdgeInsets.only(top: 450, left: 85),
                child: FlatButton(
                  child: Text(
                    'Forgot Your Password?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  splashColor: Colors.transparent,
                  colorBrightness: Brightness.dark,
                  onPressed: () {},
                ),
              ),
              // Register Button
              Padding(
                padding: EdgeInsets.only(
                  top: 490,
                  left: 108,
                  right: 108,
                ),
                child: FlatButton(
                  child: Text(
                    'New Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  splashColor: Colors.transparent,
                  colorBrightness: Brightness.dark,
                  onPressed: () {},
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
