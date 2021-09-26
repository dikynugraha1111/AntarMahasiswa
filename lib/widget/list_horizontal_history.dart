import 'package:flutter/material.dart';
import '../shared/theme.dart';

class ListHorizontalHistory extends StatelessWidget {
  final bool noLeft;
  final bool addNew;
  final bool iconAdd;

  const ListHorizontalHistory(
      {Key? key,
      this.noLeft = false,
      this.addNew = false,
      this.iconAdd = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: noLeft
            ? EdgeInsets.only(right: 15.0)
            : EdgeInsets.only(left: 15.0, right: 15.0),
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: addNew ? kWhiteColor : kGreyColor,
          border: Border.all(
            color: kBlackColor,
          ),
        ),
        child: iconAdd
            ? Icon(
                Icons.add,
                color: kBlackColor,
                size: 25.0,
              )
            : null);
  }
}
