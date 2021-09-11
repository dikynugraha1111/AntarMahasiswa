import 'package:antarmahasiswa/view/Main.dart';
import 'package:antarmahasiswa/view/Pesan.dart';
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
      home: PesanPage(),
    );
  }
}
