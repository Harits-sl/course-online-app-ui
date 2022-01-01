import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;

Color blueColor = Color(0xff006EEE);
Color darkBlueColor = Color(0xff082431);
Color greyColor = Color(0xffA2ADB1);
Color greenColor = Color(0xff22B07D);
Color whiteColor = Color(0xffFFFFFF);

TextStyle blueTextStyle = GoogleFonts.poppins(
  color: blueColor,
);
TextStyle darkBlueTextStyle = GoogleFonts.poppins(
  color: darkBlueColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  color: greyColor,
);
TextStyle greenTextStyle = GoogleFonts.poppins(
  color: greenColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: whiteColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

BoxShadow shadow = BoxShadow(
  blurRadius: 5,
  offset: Offset(0, 2),
  color: Color(0xffFAFAFA),
);
