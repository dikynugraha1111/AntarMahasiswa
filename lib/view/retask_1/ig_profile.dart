import '../../widget/desc_profile.dart';
import '../../widget/list_horizontal_history.dart';
import '../../widget/list_vertical_history.dart';
import '../../widget/statistic.dart';
import '../../shared/theme.dart';
import 'package:flutter/material.dart';
import '../../widget/custom_circle.dart';
import '../../widget/button_profile.dart';

final List<bool> listHorizontalHistory = <bool>[
  true,
  false,
  false,
  false,
  false,
  false,
  false,
];

class IgProfile extends StatelessWidget {
  const IgProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: appBar,
      body: ListView(
        scrollDirection: Axis.vertical,
        primary: true,
        shrinkWrap: false,
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
          Container(
            height: 60,
            width: double.infinity,
            padding: EdgeInsets.only(left: 14.0),
            margin: EdgeInsets.only(
              top: 9.0,
              bottom: 9.0,
            ),
            child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                itemCount: listHorizontalHistory.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListHorizontalHistory(
                    noLeft: listHorizontalHistory[index],
                    addNew: listHorizontalHistory[index],
                    iconAdd: listHorizontalHistory[index],
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.0),
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              primary: false,
              shrinkWrap: true,
              children: List.generate(15, (index) {
                return ListVerticalHistory(
                  index: index.toString(),
                );
              }),
            ),
          ),

          // Column(
          //   children: List.generate(10, (index) {
          //     return Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: List.generate(3, (index) {
          //         return Center(
          //           child: ListVerticalHistory(
          //             index: index.toString(),
          //           ),
          //         );
          //       }),
          //     );
          //   }),
          // ),
        ],
      ),
    );
  }
}
