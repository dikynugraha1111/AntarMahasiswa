import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title, description, email, phone, address, date;

  CustomDialog(
      {required this.title,
      required this.description,
      this.email = "",
      required this.phone,
      required this.address,
      this.date = ""});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 75, bottom: 16, left: 16, right: 16),
          margin: EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(17),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 28.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                description,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              Text(
                email,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w300),
              ),
              Text(
                phone,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w300),
              ),
              Text(
                address,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w300),
              ),
              Text(
                date,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 24.0),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'CONFIRM',
                    style: new TextStyle(
                        color: Colors.white,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w800,
                        fontSize: 15.0,
                        letterSpacing: 1.0),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
          child: Image.asset(
            'img/success.gif',
            height: 130.0,
          ),
        )
      ],
    );
  }
}
