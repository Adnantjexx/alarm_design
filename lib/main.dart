
import 'package:alarmdesign/screens/MainPage.dart';
import 'package:alarmdesign/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    return MaterialApp(
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home: new Splashscreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new MainPage()
      },
    );
  }
}