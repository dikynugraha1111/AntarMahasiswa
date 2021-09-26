import 'package:antarmahasiswa/shared/theme.dart';
import 'package:flutter/material.dart';

class BoxProductTask3 extends StatelessWidget {
  final String imageAssetBox, nameProduct, priceProduct;
  const BoxProductTask3({
    Key? key,
    required this.imageAssetBox,
    required this.nameProduct,
    required this.priceProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: kGreyColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageAssetBox,
            width: 133.0,
            height: 133.0,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            nameProduct,
            style: tNaturalDarkTextStyle.copyWith(
              fontSize: 12,
              fontWeight: semiBold,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(
            height: 11.0,
          ),
          Text(
            priceProduct,
            style: tPrimaryBlueTextStyle.copyWith(
              fontSize: 12,
              fontWeight: normal,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
