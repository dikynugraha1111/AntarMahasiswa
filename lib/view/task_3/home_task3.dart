import 'package:antarmahasiswa/view/retask_1/ig_profile.dart';
import 'package:antarmahasiswa/view/task_3/home_page_task3.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class HomeTask3 extends StatefulWidget {
  const HomeTask3({Key? key}) : super(key: key);

  @override
  State<HomeTask3> createState() => _HomeTask3State();
}

class _HomeTask3State extends State<HomeTask3>
    with SingleTickerProviderStateMixin {
  TabController? controllertab;

  @override
  void initState() {
    controllertab = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controllertab?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controllertab,
        children: [
          HomePageTask3(),
          IgProfile(),
        ],
      ),
      bottomNavigationBar: Material(
        animationDuration: Duration(milliseconds: 200),
        color: kWhiteColor,
        child: TabBar(
          controller: controllertab,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                color: kBlackColor,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                color: kBlackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
