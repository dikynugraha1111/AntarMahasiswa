import 'package:antarmahasiswa/shared/args_product.dart';
import 'package:antarmahasiswa/shared/theme.dart';
import 'package:antarmahasiswa/widget/banner_detail_page_task3.dart';
import 'package:antarmahasiswa/widget/button_input_task3.dart';
import 'package:antarmahasiswa/widget/desc_detail_page_task3.dart';
import 'package:antarmahasiswa/widget/widget_pesan.dart';

import 'package:flutter/material.dart';

class DetailPageTask3 extends StatefulWidget {
  static const routeNameTask3 = '/detail-page-task3';
  const DetailPageTask3({Key? key}) : super(key: key);

  @override
  _DetailPageTask3State createState() => _DetailPageTask3State();
}

class _DetailPageTask3State extends State<DetailPageTask3> {
  bool like = false;
  late String nameTask3;
  late int phoneTask3;
  late String addressTask3;
  int total = 1;

  late final GlobalKey<ScaffoldState> _scaffoldKeyTask3 =
      GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKeyTask3 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final argsDetailTask3 =
        ModalRoute.of(context)!.settings.arguments as ArgumentsProduct;
    return Scaffold(
      key: _scaffoldKeyTask3,
      appBar: appBarDetailPageTask3("${argsDetailTask3.titleProduct}"),
      body: ListView(
        children: [
          BannerDetailPageTask3(imageUrl: argsDetailTask3.imageUrl),
          DescDetailPageTask3(
            titleProduct: argsDetailTask3.titleProduct,
            price: argsDetailTask3.price,
            isLove: like,
            love: () {
              setState(() {
                like = !like;
              });
            },
          ),
          Form(
            key: formKeyTask3,
            child: Container(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 7.0, top: 27.0),
              child: ListView(
                primary: false,
                shrinkWrap: true,
                children: [
                  WidgetPesan(
                      hintText: "Masukan Nama",
                      labelText: "Nama",
                      maxLength: 33,
                      inputType: TextInputType.name,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Nama is Required';
                        }
                        return null;
                      },
                      onSaved: (String? value) {
                        nameTask3 = value!;
                      }),
                  WidgetPesan(
                    inputType: TextInputType.phone,
                    hintText: "Masukan Nomor",
                    labelText: "Hand Phone",
                    maxLength: 15,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Phone Number is Required';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      phoneTask3 = int.parse(value!);
                    },
                  ),
                  WidgetPesan(
                    inputType: TextInputType.streetAddress,
                    hintText: "Masukan Alamat",
                    labelText: "Address",
                    maxLength: 50,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Address is Required';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      addressTask3 = value!;
                    },
                  ),
                  WidgetPesan(
                    initial: true,
                    initialText: argsDetailTask3.titleProduct,
                    inputType: TextInputType.text,
                    hintText: "Pesanan Anda",
                    labelText: "Pesanan",
                    maxLength: 50,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Address is Required';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      addressTask3 = value!;
                    },
                  ),
                  SizedBox(
                    height: 9.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${(int.parse(argsDetailTask3.price) * total).toString()}",
                        style: tPrimaryBlueTextStyle.copyWith(
                          fontSize: 16.0,
                          fontWeight: semiBold,
                          letterSpacing: 0.5,
                        ),
                      ),
                      ButtonInputTaks3(
                        plus: () {
                          setState(() {
                            total++;
                          });
                        },
                        min: () {
                          setState(() {
                            total--;
                          });
                        },
                        totalProduct: total.toString(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
