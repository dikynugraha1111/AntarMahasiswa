import 'package:flutter/material.dart';

class BannerDetailPageTask3 extends StatelessWidget {
  final String imageUrl;
  const BannerDetailPageTask3({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 238.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
