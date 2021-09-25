import 'view/retask_1/detail_page.dart';
import 'view/splash_screen_page.dart';
import 'view/retask_1/ig_profile.dart';
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
