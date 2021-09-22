import 'package:flutter/material.dart';
import '../shared/theme.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kWhiteColor,
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: tBlacTextStyle.copyWith(
                    fontSize: 13, fontWeight: medium, letterSpacing: 2.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            width: 7.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kWhiteColor,
              shape: RoundedRectangleBorder(),
            ),
            onPressed: () {},
            child: Icon(
              Icons.arrow_drop_down_outlined,
              size: 14.0,
              color: kBlackColor,
            ),
          )
        ],
      ),
    );
  }
}
