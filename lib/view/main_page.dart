import 'dart:ui';

import 'package:antarmahasiswa/view/home_page.dart';
import 'package:antarmahasiswa/view/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;
  final ProfilePage profilePage = ProfilePage();
  final HomePage homePage = HomePage();

  Widget _viewPage = HomePage();

  Widget _selectPage(int page) {
    switch (page) {
      case 0:
        return homePage;

      case 1:
        return profilePage;

      default:
        return homePage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _pageIndex == 0
              ? Text("Antar Mahasiswa")
              : Text("Profile Anda", textAlign: TextAlign.center),
          backgroundColor: HexColor("#2a9d8f"),
          leading: _pageIndex == 0 ? Icon(Icons.motorcycle_outlined) : null,
          centerTitle: _pageIndex == 0 ? false : true,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: _pageIndex,
          onTap: (int page) {
            setState(() {
              _viewPage = _selectPage(page);
              _pageIndex = page;
            });
          },
          color: HexColor("#2a9d8f"),
          backgroundColor: Colors.white,
          buttonBackgroundColor: HexColor("#2a9d8f"),
          height: 55,
          animationDuration: Duration(milliseconds: 250),
          animationCurve: Curves.bounceInOut,
          items: [
            Icon(Icons.home, size: 20, color: Colors.white),
            Icon(Icons.person, size: 20, color: Colors.white),
          ],
        ),
        body: _viewPage);
  }
}
