import 'package:flutter/material.dart';

class CustomCircle extends StatelessWidget {
  final ImageProvider<Object> imageProvider;
  const CustomCircle({Key? key, required this.imageProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      width: 150.0,
      height: 150.0,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.cover,
          image: imageProvider,
        ),
      ),
    );
  }
}
