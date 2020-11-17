import 'dart:async';
import 'package:epc_class/splashscreen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MainApp(),
    routes: <String, WidgetBuilder>{
      '/splashOne': (BuildContext context) => new SplashScreenOne()
    },
  ));
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => new _MainAppState();
}

class _MainAppState extends State<MainApp> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/splashOne');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue[900],
        child: Center(
          child: Container(
              child: Image.asset("assets/images/logo.png")),
        ),
      ),
    );
  }
}