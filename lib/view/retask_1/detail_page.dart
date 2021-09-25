import '../../shared/set_nav.dart';
import '../../shared/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static const routeName = '/detail-page';
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as DetailPageArguments;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 21),
        child: Center(
          child: Text(
            "Hello ${args.name} and this page is form index ${args.index} Vertical History",
            style: tBlacTextStyle.copyWith(
              fontSize: 13.0,
              fontWeight: medium,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
