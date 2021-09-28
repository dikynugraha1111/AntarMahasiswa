import 'package:antarmahasiswa/shared/args_product.dart';
import 'package:antarmahasiswa/shared/theme.dart';
import 'package:antarmahasiswa/view/task_3/detail_page_task3.dart';
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
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          DetailPageTask3.routeNameTask3,
          arguments: ArgumentsProduct(
            imageUrl: imageAssetBox,
            titleProduct: nameProduct,
            price: priceProduct,
          ),
        );
      },
      child: GridTile(
        header: Image.asset(
          imageAssetBox,
          fit: BoxFit.cover,
          width: 133.0,
          alignment: Alignment.center,
          height: 133.0,
        ),
        footer: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nameProduct,
              style: tNaturalDarkTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "\$$priceProduct",
              style: tPrimaryBlueTextStyle.copyWith(
                fontSize: 12,
                fontWeight: normal,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
        child: Text(""),
      ),
    );
  }
}
