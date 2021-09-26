import 'package:antarmahasiswa/shared/theme.dart';
import 'package:flutter/material.dart';

class ButtonInputTaks3 extends StatelessWidget {
  final VoidCallback plus, min;
  final String totalProduct;

  const ButtonInputTaks3(
      {Key? key,
      required this.plus,
      required this.min,
      required this.totalProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kNaturalLight),
      child: Row(
        children: [
          GestureDetector(
            onTap: min,
            child: Container(
              width: 35,
              height: 27,
              margin: EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7),
                  bottomLeft: Radius.circular(7),
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.remove,
                  color: kNaturalDark,
                  size: 12,
                ),
              ),
            ),
          ),
          Container(
            width: 43.0,
            height: 27.0,
            margin: EdgeInsets.all(1.5),
            child: Center(
              child: Text(
                totalProduct,
                style: tNaturalDarkTextStyle.copyWith(
                  fontSize: 12.0,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: plus,
            child: Container(
              width: 35,
              height: 27,
              margin: EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: kNaturalDark,
                  size: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
