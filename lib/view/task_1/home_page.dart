import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../controller/homecontroller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends HomeController {
  @override
  Widget build(BuildContext context) {
    List img = [
      "http://gagasanonline.com/wp-content/uploads/2019/11/ojek-online_20161019_211011.jpg",
      "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
      "https://awsimages.detik.net.id/community/media/visual/2020/12/05/bangga-driver-ojol-ini-wisuda-lho-6_169.jpeg?w=700&q=90"
    ];

    // noted list of Costum Widget

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
            items: img.map(
              (imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(right: 7.0, left: 7.0, top: 10.0),
                      decoration: BoxDecoration(
                        color: HexColor("#2a9d8f"),
                      ),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (BuildContext context, Object exception,
                            StackTrace? stackTrace) {
                          return Container(
                            width: 50,
                            child: CircularProgressIndicator(),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ).toList()),
        SizedBox(
          height: 10.0,
        ),
        ListTile(
          title: new Text(
            "Pilih Fitur",
            style: new TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
          ),
          trailing: new Icon(Icons.pages_outlined),
        ),
        cardOfMenu(),
        ListTile(
          title: new Text(
            "Berita Nich",
            style: new TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
          ),
          trailing: new Icon(Icons.book_outlined),
        ),
        cardOfNews(
            "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
            "Anter Wisuda",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor elit nunc. Vivamus rhoncus, erat non malesuada aliquam, mi lacus vestibulum velit, et faucibus turpis enim id nulla",
            one: true),
        SizedBox(height: 7.0),
        cardOfNews(
          "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
          "Anter Wisuda",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor elit nunc. Vivamus rhoncus, erat non malesuada aliquam, mi lacus vestibulum velit, et faucibus turpis enim id nulla",
        ),
        cardOfNews(
          "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
          "Anter Wisuda",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor elit nunc. Vivamus rhoncus, erat non malesuada aliquam, mi lacus vestibulum velit, et faucibus turpis enim id nulla",
        ),
        cardOfNews(
          "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
          "Anter Wisuda",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor elit nunc. Vivamus rhoncus, erat non malesuada aliquam, mi lacus vestibulum velit, et faucibus turpis enim id nulla",
        ),
        cardOfNews(
          "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
          "Anter Wisuda",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor elit nunc. Vivamus rhoncus, erat non malesuada aliquam, mi lacus vestibulum velit, et faucibus turpis enim id nulla",
        ),
        cardOfNews(
          "https://www.radarcirebon.com/wp-content/uploads/2018/08/ojol.jpg",
          "Anter Wisuda",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor elit nunc. Vivamus rhoncus, erat non malesuada aliquam, mi lacus vestibulum velit, et faucibus turpis enim id nulla",
        ),
      ],
    );
  }
}
