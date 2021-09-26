import 'package:antarmahasiswa/shared/args_product.dart';
import 'package:antarmahasiswa/shared/theme.dart';
import 'package:antarmahasiswa/widget/banner_home_task3.dart';
import 'package:antarmahasiswa/widget/box_product_task3.dart';
import 'package:flutter/material.dart';

class HomePageTask3 extends StatelessWidget {
  const HomePageTask3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          BannerHomeTask3(),
          Padding(
            padding: EdgeInsets.only(
              left: 16.0,
              bottom: 16.0,
            ),
            child: Text(
              "Product",
              style: tNaturalDarkTextStyle.copyWith(
                fontSize: 19.0,
                fontWeight: bold,
                letterSpacing: 0.5,
              ),
            ),
          ),
          GridView.count(
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.5),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            crossAxisSpacing: 13.0,
            mainAxisSpacing: 12.0,
            primary: false,
            shrinkWrap: true,
            crossAxisCount: 2,
            children: List.generate(nameProduct.length, (index) {
              return BoxProductTask3(
                imageAssetBox: "assets/product${index + 1}.png",
                nameProduct: nameProduct[index],
                priceProduct: priceProduct[index],
              );
            }),
          )
        ],
      ),
    );
  }
}
