import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "~INI PROFILE~",
        style: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.w800,
            letterSpacing: 2.5,
            color: HexColor("#2a9d8f")),
      ),
    );
  }
}
