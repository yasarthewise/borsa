import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'main.dart';

class SplashLoadingScreen extends StatefulWidget {
  @override
  _SplashLoadingScreenState createState() => _SplashLoadingScreenState();
}

class _SplashLoadingScreenState extends State<SplashLoadingScreen> {
  double opacity = 1.0;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MyHomePage();
      })),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 150.0, 8.0, 60.0),
                child: Image(
                  image: AssetImage("assets/borsalogo.jfif"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
