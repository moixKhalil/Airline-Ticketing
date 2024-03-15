import 'package:banoqabilfinal/menu.dart';
import 'package:flutter/material.dart';
import 'splashScreen.dart';


void main() {
  
  runApp(const FlightApp());
}
class FlightApp extends StatefulWidget {
  const FlightApp({super.key});

  @override
  State<FlightApp> createState() => _FlightAppState();
}

class _FlightAppState extends State<FlightApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    routes: {
      '/':(context) => SplashScreenApp(),
      '/menu':(context) => menuApp()
    },
    );
  }
}