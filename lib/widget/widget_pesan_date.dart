import 'package:flutter/material.dart';

class WidgetPesanDate extends StatefulWidget {
  final String date;
  final VoidCallback onPressed;

  const WidgetPesanDate({Key? key, required this.onPressed, required this.date})
      : super(key: key);

  @override
  _WidgetPesanDateState createState() => _WidgetPesanDateState();
}

class _WidgetPesanDateState extends State<WidgetPesanDate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(right: 15.0, left: 15.0, bottom: 10.0, top: 10.0),
      child: Row(
        children: [
          Icon(
            Icons.calendar_today,
            color: Colors.black54,
            size: 27.0,
          ),
          Padding(padding: EdgeInsets.only(left: 15.0)),
          Expanded(
            child: Text(
              "Tanggal Lahir :",
              style: TextStyle(color: Colors.black54, fontSize: 15.0),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: widget.onPressed,
            child: Text(
              widget.date,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
