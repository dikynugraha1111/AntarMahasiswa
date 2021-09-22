import 'package:flutter/material.dart';
import '../shared/theme.dart';

class DescProfile extends StatelessWidget {
  final String name, skill, part, quote;
  final IconData iconSkill, iconPart;
  const DescProfile({
    Key? key,
    required this.name,
    required this.skill,
    required this.part,
    required this.iconSkill,
    required this.iconPart,
    required this.quote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: tBlacTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 13,
            ),
          ),
          Row(
            children: [
              Icon(
                iconSkill,
                size: 12,
                color: kBlackColor,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                skill,
                style: tBlacTextStyle.copyWith(
                  fontWeight: normal,
                  fontSize: 12,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(iconPart, size: 12, color: kBlackColor),
              SizedBox(
                width: 5.0,
              ),
              Text(
                part,
                style: tBlacTextStyle.copyWith(
                  fontWeight: normal,
                  fontSize: 12,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.timer_rounded, size: 12, color: kBlackColor),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "isNgantuk ? Tidur : Kerja ",
                style: tBlacTextStyle.copyWith(
                  fontWeight: normal,
                  fontSize: 12,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
          Text(
            quote,
            style: tBlacTextStyle.copyWith(
              fontWeight: normal,
              fontSize: 12,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
