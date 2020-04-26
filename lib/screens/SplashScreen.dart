import 'dart:async';

import 'package:alarmdesign/Icons/Icons_svg.dart';
import 'package:alarmdesign/screens/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:splashscreen/splashscreen.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation _animation;

  startTime() async {
    var _duration = new Duration(seconds: 7);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
    _controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 5200)
    );
    _animation = Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
      opacity: _animation,
      child: Scaffold(
        backgroundColor: Color(0xff1E2439),
        body: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 320,
                      width: 320,
                      child: SvgPicture.asset(logo)
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Smart-I Clock",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffD3D6E3)
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
