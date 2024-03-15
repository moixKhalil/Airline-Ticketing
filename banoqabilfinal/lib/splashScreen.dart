import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreenApp extends StatefulWidget {
  const SplashScreenApp({Key? key}) : super(key: key);

  @override
  _SplashScreenAppState createState() => _SplashScreenAppState();
}

class _SplashScreenAppState extends State<SplashScreenApp> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    var duration = Duration(seconds: 4);
    Timer(duration, route);
  }

  void route() {
    Navigator.pushReplacementNamed(context, '/menu');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Container(
      child: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          )),
          child: Column(
            children: [
              Container(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Image.asset('assets/images/skywestlogo.png'),
                ),
              ),
              Container(
                height: 20,
              ),
              Text("Ascend with Altitude,",
                  style: TextStyle(fontSize: 27, color: Colors.white)),
              Text("Travel in Luxury",
                  style: TextStyle(fontSize: 27, color: Colors.white)),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Lottie.asset("assets/lottie/splashPlane.json"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
