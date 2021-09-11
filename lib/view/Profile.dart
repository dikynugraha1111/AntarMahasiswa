import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

const _urlGit = 'https://github.com/dikynugraha1111';
const _urlAPI = 'https://mocki.io/v1/b419c87c-668b-47c1-b070-3be1868bb285';
const _urlLink = 'https://www.linkedin.com/in/diky-nugraha-difiera/';
const _urlInst = 'https://www.instagram.com/dikydifiera/';

class _ProfilePageState extends State<ProfilePage> {
  void _launchURLGit() async => await canLaunch(_urlGit)
      ? await launch(_urlGit)
      : throw 'Could not launch $_urlGit';

  void _launchURLAPI() async => await canLaunch(_urlAPI)
      ? await launch(_urlAPI)
      : throw 'Could not launch $_urlAPI';

  void _launchURLLink() async => await canLaunch(_urlLink)
      ? await launch(_urlLink)
      : throw 'Could not launch $_urlLink';

  void _launchURLIns() async => await canLaunch(_urlInst)
      ? await launch(_urlInst)
      : throw 'Could not launch $_urlInst';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        new Stack(children: [
          new Container(
            decoration: new BoxDecoration(
                color: HexColor("#2a9d8f"),
                borderRadius: new BorderRadius.only(
                    bottomLeft: Radius.circular(21.0),
                    bottomRight: Radius.circular(21.0))),
            width: double.infinity,
            height: 100.0,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 25.0),
              width: 150.0,
              height: 150.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Colors.white,
                      width: 7.0,
                      style: BorderStyle.solid),
                  image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://foto.kontan.co.id/ZtqnsCKMUotw3laCVwL7crhni54=/smart/2021/01/04/112846091p.jpg"))),
            ),
          ),
        ]),
        SizedBox(
          height: 15.0,
        ),
        new ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: HexColor("#2a9d8f"),
            ),
            onPressed: () {
              _launchURLGit();
            },
            child: new Text("GitHub.. !!!")),
        new ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: HexColor("#2a9d8f"),
            ),
            onPressed: () {
              _launchURLAPI();
            },
            child: new Text("Get API.. !!!")),
        new ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: HexColor("#2a9d8f"),
            ),
            onPressed: () {
              _launchURLLink();
            },
            child: new Text("LinkedIn.. !!!")),
        new ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: HexColor("#2a9d8f"),
            ),
            onPressed: () {
              _launchURLIns();
            },
            child: new Text("Instagram.. !!!")),
      ]),
    );
  }
}
