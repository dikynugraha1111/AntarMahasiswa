import 'package:antarmahasiswa/shared/args_product.dart';
import 'package:antarmahasiswa/shared/theme.dart';
import 'package:antarmahasiswa/widget/banner_detail_page_task3.dart';
import 'package:antarmahasiswa/widget/button_input_task3.dart';
import 'package:antarmahasiswa/widget/custom_dialog.dart';
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
      appBar: appBarDetailPageTask3(
          "${argsDetailTask3.titleProduct ?? "Custom Product"}"),
      body: ListView(
        children: [
          BannerDetailPageTask3(
              imageUrl: argsDetailTask3.imageUrl ?? "assets/Icon.png"),
          DescDetailPageTask3(
            titleProduct: argsDetailTask3.titleProduct ?? "Custom Design",
            price: argsDetailTask3.price ?? "\$ - We'll Contact you soon",
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
                  left: 20.0, right: 20.0, bottom: 17.0, top: 7.0),
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
                  SizedBox(
                    height: 9.0,
                  ),
                  argsDetailTask3.titleProduct != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pesanan anda",
                              style: tBlacTextStyle,
                            ),
                            Text(
                              "${argsDetailTask3.titleProduct}",
                              style: tBlacTextStyle,
                            ),
                          ],
                        )
                      : WidgetPesan(
                          inputType: TextInputType.text,
                          hintText: "Custom Pesanan Anda",
                          labelText: "Pesanan",
                          maxLength: 50,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Field is Required';
                            }
                            return null;
                          },
                          onSaved: (String? value) {},
                        ),
                  SizedBox(
                    height: 9.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      argsDetailTask3.price != null
                          ? Text(
                              "\$${(int.parse(argsDetailTask3.price!) * total).toString()}",
                              style: tPrimaryBlueTextStyle.copyWith(
                                fontSize: 16.0,
                                fontWeight: semiBold,
                                letterSpacing: 0.5,
                              ),
                            )
                          : Text(""),
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 7.0),
                      primary: kPrimaryBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                    onPressed: () {
                      if (!formKeyTask3.currentState!.validate()) {
                        return;
                      }
                      formKeyTask3.currentState!.save();
                      showDialog(
                        context: context,
                        builder: (context) {
                          return CustomDialog(
                            title: "Booked",
                            description:
                                "Selamat $nameTask3 Pesanan anda berhasil",
                            phone: phoneTask3.toString(),
                            address: addressTask3,
                          );
                        },
                      );
                    },
                    child: Text(
                      "Pesan",
                      style: tWhiteTextStyle.copyWith(
                        fontSize: 17.0,
                        letterSpacing: 2.5,
                        fontWeight: medium,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
