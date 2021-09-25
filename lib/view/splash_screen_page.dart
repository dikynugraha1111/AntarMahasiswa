import 'dart:async';

import 'package:antarmahasiswa/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, "/home-page-task3");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 111.0,
            width: 111.0,
            margin: const EdgeInsets.only(bottom: 33.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logo.png"),
              ),
            ),
          ),
          Text(
            "ISO-GABUNG",
            style: tBlacTextStyle.copyWith(
                fontWeight: medium, fontSize: 32, letterSpacing: 10),
          )
        ],
      )),
    );
  }
}
