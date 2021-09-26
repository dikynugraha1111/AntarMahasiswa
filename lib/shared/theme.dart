import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// noted Global Colors
Color kBlueColor = const Color(0xFF0b3973);
Color kBlackColor = const Color(0xFF231f20);
Color kWhiteColor = const Color(0xFFfafafa);
Color kGreyColor = const Color(0xFFb9b9b9);
Color kPrimaryBlue = const Color(0xFF40BFFF);
Color kNaturalDark = const Color(0xFF223263);
Color kPrimaryRed = const Color(0xFFFB7181);

// Noted Global TextStyle
TextStyle tGreyTextStyle = GoogleFonts.poppins(color: kGreyColor);
TextStyle tBlacTextStyle = GoogleFonts.poppins(color: kBlackColor);
TextStyle tBlueTextStyle = GoogleFonts.poppins(color: kBlueColor);
TextStyle tWhiteTextStyle = GoogleFonts.poppins(color: kWhiteColor);
TextStyle tPrimaryBlueTextStyle = GoogleFonts.poppins(color: kPrimaryBlue);
TextStyle tNaturalDarkTextStyle = GoogleFonts.poppins(color: kNaturalDark);

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
  foregroundColor: kWhiteColor,
  shadowColor: kWhiteColor,
  backgroundColor: kWhiteColor,
  title: Text(
    "dikydifiera",
    style: tBlacTextStyle.copyWith(fontWeight: bold, fontSize: 21),
  ),
  actions: [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.add_box_outlined,
          color: kBlackColor,
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.format_list_bulleted_rounded,
          color: kBlackColor,
        ),
      ),
    ),
  ],
);

PreferredSizeWidget appBarDetailPageTask3(String nameProduct) {
  return AppBar(
    foregroundColor: kGreyColor,
    backgroundColor: kWhiteColor,
    title: Text(
      nameProduct,
      overflow: TextOverflow.clip,
      style: tNaturalDarkTextStyle.copyWith(
        fontWeight: semiBold,
        fontSize: 16.0,
        letterSpacing: 0.5,
      ),
    ),
  );
}
