import 'package:antarmahasiswa/shared/theme.dart';
import 'package:flutter/material.dart';

class BannerHomeTask3 extends StatelessWidget {
  const BannerHomeTask3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 9.0),
      width: MediaQuery.of(context).size.width - 32,
      height: 206,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/banner.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 48.0,
              left: 24.0,
            ),
            child: Text(
              "Recomended \nProduct",
              style: tWhiteTextStyle.copyWith(
                fontSize: 24.0,
                fontWeight: bold,
                letterSpacing: 0.5,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.0,
              top: 16.0,
            ),
            child: Text(
              "We Recommend the best for you",
              style: tWhiteTextStyle.copyWith(
                fontSize: 12.0,
                fontWeight: normal,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
