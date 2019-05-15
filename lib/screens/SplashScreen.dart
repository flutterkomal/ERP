

import 'package:erp_flutter/screens/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 5),
            () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child:Text(
          // ignore: argument_type_not_assignable
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


