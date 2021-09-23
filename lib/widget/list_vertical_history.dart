import 'package:flutter/material.dart';

class ListVerticalHistory extends StatelessWidget {
  const ListVerticalHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 3 - 10,
      width: MediaQuery.of(context).size.width / 3 - 10,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/grid_photo.jpg"),
        ),
      ),
    );
  }
}
