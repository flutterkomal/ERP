

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CompanyConfig.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
  var _duration = new Duration(seconds: 2);
  return new Timer(_duration,navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed("/company");
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text(
          "Flutter",
          style: TextStyle(
              color: Colors.green,
              fontSize: 50,
              fontStyle: FontStyle.italic
          ),
        ),
      ),

    );
  }


}


