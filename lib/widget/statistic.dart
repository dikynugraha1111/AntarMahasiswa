import 'package:flutter/material.dart';
import '../shared/theme.dart';

class Statistic extends StatelessWidget {
  const Statistic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WidgetColumnStatistic(count: "38", title: "Postingan"),
        WidgetColumnStatistic(count: "615", title: "Pengikut"),
        WidgetColumnStatistic(count: "756", title: "Mengikuti"),
      ],
    );
  }
}

class WidgetColumnStatistic extends StatelessWidget {
  final String count;
  final String title;
  const WidgetColumnStatistic(
      {Key? key, required this.count, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            count,
            style: tBlacTextStyle.copyWith(
              fontSize: 15,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            title,
            style:
                tBlacTextStyle.copyWith(fontSize: 14.0, fontWeight: semiBold),
          ),
        ],
      ),
    );
  }
}
