import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List img = [
      "http://gagasanonline.com/wp-content/uploads/2019/11/ojek-online_20161019_211011.jpg",
      "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
      "https://awsimages.detik.net.id/community/media/visual/2020/12/05/bangga-driver-ojol-ini-wisuda-lho-6_169.jpeg?w=700&q=90"
    ];

    // noted list of Costum Widget
    Widget _iconMenu(IconData icons, Color colors) {
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

    Widget _cardOfMenu() {
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
                    _iconMenu(Icons.directions_car_filled, Colors.blueAccent),
                    SizedBox(height: 6.0),
                    Text("Mobil")
                  ],
                ),
                Column(
                  children: [
                    _iconMenu(
                      Icons.motorcycle,
                      Colors.orangeAccent,
                    ),
                    SizedBox(height: 6.0),
                    Text("Motor")
                  ],
                ),
                Column(
                  children: [
                    _iconMenu(
                      Icons.mail_outline,
                      Colors.greenAccent,
                    ),
                    SizedBox(height: 6.0),
                    Text("Antar")
                  ],
                ),
              ]),
        ),
      );
    }

    Widget _cardOfNews(String url, String judul, String desc,
        {bool one = false}) {
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

    // noted Body of Page

    return ListView(
      padding: EdgeInsets.only(top: 15.0),
      children: [
        new CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 2500),
              pauseAutoPlayOnTouch: true,
              enlargeCenterPage: true,
              height: 200.0,
              initialPage: 0,
            ),
            items: img.map((imgUrl) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(right: 7.0, left: 7.0, top: 10.0),
                  decoration: BoxDecoration(
                    color: HexColor("#2a9d8f"),
                  ),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                );
              });
            }).toList()),
        SizedBox(
          height: 10.0,
        ),
        ListTile(
            title: new Text("Pilih Fitur",
                style:
                    new TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0)),
            trailing: new Icon(Icons.pages_outlined)),
        _cardOfMenu(),
        ListTile(
            title: new Text("Berita Nich",
                style:
                    new TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0)),
            trailing: new Icon(Icons.book_outlined)),
        _cardOfNews(
            "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
            "Anter Wisuda",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor elit nunc. Vivamus rhoncus, erat non malesuada aliquam, mi lacus vestibulum velit, et faucibus turpis enim id nulla",
            one: true),
        SizedBox(height: 7.0),
        _cardOfNews(
          "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
          "Anter Wisuda",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor elit nunc. Vivamus rhoncus, erat non malesuada aliquam, mi lacus vestibulum velit, et faucibus turpis enim id nulla",
        ),
        _cardOfNews(
          "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
          "Anter Wisuda",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor elit nunc. Vivamus rhoncus, erat non malesuada aliquam, mi lacus vestibulum velit, et faucibus turpis enim id nulla",
        ),
        _cardOfNews(
          "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
          "Anter Wisuda",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor elit nunc. Vivamus rhoncus, erat non malesuada aliquam, mi lacus vestibulum velit, et faucibus turpis enim id nulla",
        ),
        _cardOfNews(
          "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
          "Anter Wisuda",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor elit nunc. Vivamus rhoncus, erat non malesuada aliquam, mi lacus vestibulum velit, et faucibus turpis enim id nulla",
        ),
        _cardOfNews(
          "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
          "Anter Wisuda",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor elit nunc. Vivamus rhoncus, erat non malesuada aliquam, mi lacus vestibulum velit, et faucibus turpis enim id nulla",
        ),
      ],
    );
  }
}
