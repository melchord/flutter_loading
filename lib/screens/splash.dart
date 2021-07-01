import 'dart:async';

import 'package:flutter/material.dart';

import './end.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  Future startTime() async {
    const duration = Duration(seconds: 6);
    return Timer(duration, route);
  }

  void route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => EndScreen()));
  }

  Scaffold initScreen(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Image.asset(
                "images/loading.gif",
                height: 125.0,
                width: 125.0,
              ),
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              const Text(
                "Loading...",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              const Padding(padding: EdgeInsets.only(top: 20.0)),
            ])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }
}
