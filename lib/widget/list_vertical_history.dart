import 'package:antarmahasiswa/shared/set_nav.dart';
import 'package:antarmahasiswa/view/retask_1/detail_page.dart';
import 'package:flutter/material.dart';

class ListVerticalHistory extends StatelessWidget {
  final String index;
  const ListVerticalHistory({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailPage.routeName,
            arguments: DetailPageArguments("Diky Difiera", index));
      },
      child: Container(
        margin: EdgeInsets.all(3.0),
        height: MediaQuery.of(context).size.width / 3 - 10,
        width: MediaQuery.of(context).size.width / 3 - 10,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/grid_photo.jpg"),
          ),
        ),
      ),
    );
  }
}
