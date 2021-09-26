import 'package:antarmahasiswa/shared/theme.dart';
import 'package:flutter/material.dart';

class DescDetailPageTask3 extends StatelessWidget {
  final bool isLove;
  final String titleProduct, price;
  final VoidCallback love;
  const DescDetailPageTask3({
    Key? key,
    this.isLove = false,
    required this.titleProduct,
    required this.price,
    required this.love,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: ListView(
        primary: false,
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleProduct,
                overflow: TextOverflow.clip,
                style: tNaturalDarkTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 20.0,
                  letterSpacing: 0.5,
                ),
              ),
              GestureDetector(
                onTap: love,
                child: isLove
                    ? Icon(
                        Icons.favorite,
                        color: kPrimaryRed,
                        size: 24,
                      )
                    : Icon(
                        Icons.favorite_border,
                        size: 24,
                      ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            price,
            style: tPrimaryBlueTextStyle.copyWith(
              fontSize: 16.0,
              fontWeight: semiBold,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
