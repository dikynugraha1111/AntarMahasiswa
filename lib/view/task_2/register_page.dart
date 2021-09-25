import 'package:antarmahasiswa/widget/custom_dialog.dart';
import 'package:antarmahasiswa/widget/widget_pesan.dart';
import 'package:antarmahasiswa/widget/widget_pesan_date.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PesanPage extends StatefulWidget {
  const PesanPage({Key? key}) : super(key: key);

  @override
  _PesanPageState createState() => _PesanPageState();
}

enum gender { Laki, Perempuan }

class _PesanPageState extends State<PesanPage> {
  late String name;
  late int phone;
  late DateTime dueDate = DateTime.now();
  late String dateText;
  late String email;
  late String address;
  bool isChecked = false;
  //late String gander;

  gender? character = gender.Laki;
  // noted first initial of dateText => DateTime now
  @override
  void initState() {
    super.initState();
    dateText = "${dueDate.day}/${dueDate.month}/${dueDate.year}";
  }

  // noted Pick a Date and change dueDate(Date Now) value
  Future<Null> selectDueDate(BuildContext context) async {
    final picked = await showDatePicker(
      initialDatePickerMode: DatePickerMode.year,
      initialEntryMode: DatePickerEntryMode.calendar,
      context: context,
      initialDate: dueDate,
      firstDate: DateTime(1960),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        dueDate = picked;
        dateText = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  void selectGender(gender? value) {
    setState(() {
      character = value;
    });
  }

// noted Build Widget for Gander
  Widget buildGender() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          value: gender.Laki,
          groupValue: character,
          onChanged: (gender? value) {
            selectGender(value);
          },
          activeColor: Colors.blue,
        ),
        Text(
          'Laki',
          style: TextStyle(fontSize: 17.0, fontFamily: "Poppins"),
        ),
        Radio(
          value: gender.Perempuan,
          groupValue: character,
          onChanged: (gender? value) {
            selectGender(value);
          },
          activeColor: Colors.blue,
        ),
        Text(
          'Perempuan',
          style: TextStyle(fontSize: 17.0, fontFamily: "Poppins"),
        ),
      ],
    );
  }

  late final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.lightBlue,
      body: ListView(
        primary: false,
        shrinkWrap: true,
        children: [
          Container(
            height: 170.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Selamat Datang",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          fontSize: 24.0,
                          color: Colors.white,
                          letterSpacing: 0.5),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Silahlkan Lakukan Pendaftaran",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontSize: 15.0,
                          color: Colors.white.withOpacity(0.8),
                          letterSpacing: 0.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Form(
            key: formKey,
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 7.0, top: 27.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
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
                        name = value!;
                      }),
                  WidgetPesan(
                      hintText: "Masukan Email",
                      labelText: "Email",
                      maxLength: 33,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Email is Required';
                        }
                        if (!RegExp(
                                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                            .hasMatch(value)) {
                          return 'Tolong Masukan Email yang benar';
                        }

                        return null;
                      },
                      onSaved: (String? value) {
                        email = value!;
                      }),
                  WidgetPesan(
                    inputType: TextInputType.phone,
                    hintText: "Masukan Nomor",
                    labelText: "HandPhone",
                    maxLength: 15,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Phone Number is Required';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      phone = int.parse(value!);
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
                      address = value!;
                    },
                  ),
                  WidgetPesanDate(
                      onPressed: () => selectDueDate(context), date: dateText),
                  buildGender(),
                  Row(
                    children: [
                      Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                isChecked = value!;
                              },
                            );
                          }),
                      Expanded(
                        child: Text(
                          "Saya menyetujui semua persyaratan dari pendaftaran ini",
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                      ),
                      onPressed: isChecked
                          ? () {
                              if (!formKey.currentState!.validate()) {
                                return;
                              }
                              formKey.currentState!.save();
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return CustomDialog(
                                      title: "Noted",
                                      description:
                                          "Selamat $name Pendaftaran Berhasil",
                                      email: email,
                                      phone: phone.toString(),
                                      address: address,
                                      date: dateText);
                                },
                              );
                            }
                          : null,
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            fontSize: 16.0,
                            letterSpacing: 2.5),
                      ),
                    ),
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
