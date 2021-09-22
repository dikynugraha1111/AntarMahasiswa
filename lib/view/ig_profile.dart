import 'package:antarmahasiswa/widget/desc_profile.dart';

import '../widget/statistic.dart';

import '../shared/theme.dart';
import 'package:flutter/material.dart';
import '../widget/custom_circle.dart';
import '../widget/button_profile.dart';

class IgProfile extends StatelessWidget {
  const IgProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: appBar,
      body: ListView(
        primary: false,
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 11.0),
            child: Row(
              children: [
                CustomCircle(
                  imageProvider: AssetImage("assets/profile_photo.jpg"),
                ),
                Expanded(
                  child: Statistic(),
                ),
              ],
            ),
          ),
          DescProfile(
              name: "Diky Nugraha Difiera",
              skill: "Mobile => Flutter",
              part: "Part of #MalmingCoding",
              iconSkill: Icons.smartphone_rounded,
              iconPart: Icons.people_alt_sharp,
              quote: "Ra ngoding Ra mangan!"),
          ButtonProfile(),
        ],
      ),
    );
  }
}
