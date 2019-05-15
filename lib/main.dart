import 'package:erp_flutter/screens/CompanyConfig.dart';
import 'package:erp_flutter/screens/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: ' Routes Demo',
    // Start the app with the "first" named route. In our case, the app will start
    // on the FirstScreen Widget
    initialRoute: 'splash',
    routes: {
      // When we navigate to the "/first" route, build the FirstScreen Widget
      'splash': (context) => SplashScreen(),
      // When we navigate to the "/second" route, build the SecondScreen Widget
      '/company': (context) => CompanyPage(),
     // '/dashboard': (context) => ThirdScreen(),
    },
  ));
}
