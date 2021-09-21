import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// noted Global Colors
Color kBlueColor = const Color(0xFF0b3973);
Color kBlackColor = const Color(0xFF231f20);
Color kWhiteColor = const Color(0xFFfafafa);
Color kGreyColor = const Color(0xFFb9b9b9);

// Noted Global TextStyle
TextStyle tGreyTextStyle = GoogleFonts.poppins(color: kGreyColor);
TextStyle tBlacTextStyle = GoogleFonts.poppins(color: kBlackColor);
TextStyle tBlueTextStyle = GoogleFonts.poppins(color: kBlueColor);

// Noted GlobalFontWeight
FontWeight light = FontWeight.w300;
FontWeight normal = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

// noted AppBar
AppBar appBar = AppBar(
  title: Text(
    "dikydifiera",
    style: tBlacTextStyle.copyWith(fontWeight: bold, fontSize: 21),
  ),
  actions: [
    Icon(
      Icons.add_box_outlined,
      color: kBlackColor,
    ),
    Icon(
      Icons.format_list_bulleted_rounded,
      color: kBlackColor,
    ),
  ],
);
