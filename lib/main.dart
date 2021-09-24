import 'package:antarmahasiswa/shared/set_nav.dart';
import 'package:antarmahasiswa/view/detail_page.dart';
import 'package:antarmahasiswa/view/splash_screen_page.dart';

import 'view/ig_profile.dart';

import 'view/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Antar Mahasiswa',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreenPage(),
        '/home-page': (context) => IgProfile(),
        DetailPage.routeName: (contex) => DetailPage(),
      },
    );
  }
}
