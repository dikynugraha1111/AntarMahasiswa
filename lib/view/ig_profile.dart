import '../widget/statistic.dart';

import '../shared/theme.dart';
import 'package:flutter/material.dart';
import '../widget/custom_circle.dart';

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
          Row(
            children: [
              CustomCircle(
                imageProvider: AssetImage("assets/profile_photo.jpg"),
              ),
              Expanded(
                child: Statistic(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
