import '../view/task_1/home_page.dart';
import 'package:flutter/material.dart';

abstract class HomeController extends State<HomePage> {
  Widget iconMenu(IconData icons, Color colors) {
    return Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colors,
        ),
        child: Icon(
          icons,
          color: Colors.white,
        ));
  }

  Widget cardOfMenu() {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 11.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 21.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  iconMenu(Icons.directions_car_filled, Colors.blueAccent),
                  SizedBox(height: 6.0),
                  Text("Mobil")
                ],
              ),
              Column(
                children: [
                  iconMenu(
                    Icons.motorcycle,
                    Colors.orangeAccent,
                  ),
                  SizedBox(height: 6.0),
                  Text("Motor")
                ],
              ),
              GestureDetector(
                child: Column(
                  children: [
                    iconMenu(
                      Icons.mail_outline,
                      Colors.greenAccent,
                    ),
                    SizedBox(height: 6.0),
                    Text("Antar")
                  ],
                ),
              ),
            ]),
      ),
    );
  }

  Widget cardOfNews(String url, String judul, String desc, {bool one = false}) {
    return Card(
      elevation: 7.0,
      margin: EdgeInsets.symmetric(horizontal: 11.0, vertical: one ? 0 : 7.0),
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Column(
            children: [
              Row(
                children: [
                  new Padding(
                    padding: EdgeInsets.all(5.0),
                    child: new ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: new Image.network(
                          url,
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.cover,
                          errorBuilder: (BuildContext context, Object exception,
                              StackTrace? stackTrace) {
                            return Container(
                                width: 20, child: CircularProgressIndicator());
                          },
                        )),
                  ),
                  new Expanded(
                    child: new Padding(
                      padding: EdgeInsets.all(5.0),
                      child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Text(judul,
                                style: new TextStyle(
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                    color: Colors.black)),
                            new Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: new Row(children: [
                                new Expanded(
                                    child: new Text(desc,
                                        maxLines: 2,
                                        style: new TextStyle(
                                          fontWeight: FontWeight.w300,
                                        )))
                              ]),
                            )
                          ]),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
