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
        lastDate: DateTime.now());
    if (picked != null) {
      setState(() {
        dueDate = picked;
        dateText = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  // noted Build Widget for Email
  Widget buildEmail() {
    return TextFormField(
      decoration: new InputDecoration(
          hintText: "Masukan Email",
          labelText: "Masukan Alamat Email",
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(20.0),
          )),
      maxLength: 50,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Masukan EMAIL WOI';
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
      },
    );
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
        new Radio(
          value: gender.Laki,
          groupValue: character,
          onChanged: (gender? value) {
            selectGender(value);
          },
          activeColor: Colors.blue,
        ),
        Text(
          'Laki',
          style: new TextStyle(fontSize: 17.0, fontFamily: "Poppins"),
        ),
        new Radio(
          value: gender.Perempuan,
          groupValue: character,
          onChanged: (gender? value) {
            selectGender(value);
          },
          activeColor: Colors.blue,
        ),
        Text(
          'Perempuan',
          style: new TextStyle(fontSize: 17.0, fontFamily: "Poppins"),
        ),
      ],
    );
  }

  late final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>();
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
          new Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  new Container(
                    height: 170.0,
                    width: double.infinity,
                    decoration: new BoxDecoration(
                      color: Colors.lightBlue,
                    ),
                    child: new Center(
                        child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Center(
                          child: new Text(
                            "Selamat Datang",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                                fontSize: 24.0,
                                color: Colors.white,
                                letterSpacing: 0.5),
                          ),
                        ),
                        new Center(
                          child: new Text(
                            "Silahlkan Lakukan Pendaftaran",
                            style: new TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                                fontSize: 15.0,
                                color: Colors.white.withOpacity(0.8),
                                letterSpacing: 0.5),
                          ),
                        ),
                      ],
                    )),
                  ),
                  new Container(
                    height: MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 7.0, top: 27.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: ListView(
                      children: [
                        WidgetPesan(
                            hintText: "Masukan Nama",
                            labelText: "Nama",
                            maxLength: 33,
                            inputType: TextInputType.name,
                            onSaved: (String? value) {
                              name = value!;
                            }),
                        buildEmail(),
                        WidgetPesan(
                            inputType: TextInputType.phone,
                            hintText: "Masukan Nomor",
                            labelText: "HandPhone",
                            maxLength: 15,
                            onSaved: (String? value) {
                              phone = int.parse(value!);
                            }),
                        WidgetPesan(
                            inputType: TextInputType.streetAddress,
                            hintText: "Masukan Alamat",
                            labelText: "Address",
                            maxLength: 50,
                            onSaved: (String? value) {
                              address = value!;
                            }),
                        WidgetPesanDate(
                            onPressed: () => selectDueDate(context),
                            date: dateText),
                        buildGender(),
                        SizedBox(
                          height: 15.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.lightBlue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(7.0))),
                              onPressed: () {
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
                                              "Selamat $name Pendaftaran Berhasil");
                                    });
                              },
                              child: Text("Daftar",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins",
                                      fontSize: 16.0,
                                      letterSpacing: 2.5))),
                        )
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
