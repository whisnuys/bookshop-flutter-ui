// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;

Color kBlackColor = Color(0xFF1F1449);
Color kWhiteColor = Color(0xFFFFFFFF);
Color kGreyOldColor = Color(0xFF4F4F4F);
Color kGreyColor = Color(0xFF828282);
Color kBlueColor = Color(0xFF53889D);
Color kBabyBlueColor = Color(0xFFBBD1D9);
Color kRedColor = Color(0xFFD96F6E);
Color kPinkColor = Color(0xFFF3A492);
Color kYellowColor = Color(0xFFF2D05C);
Color kTransparentColor = Colors.transparent;

TextStyle blackHeadingTextStyle = GoogleFonts.playfairDisplay(
  color: kBlackColor,
);

TextStyle blackTextStyle = GoogleFonts.montserrat(
  color: kBlackColor,
);
TextStyle greyTextStyle = GoogleFonts.montserrat(
  color: kGreyColor,
);
TextStyle greyOldTextStyle = GoogleFonts.montserrat(
  color: kGreyOldColor,
);
TextStyle whiteTextStyle = GoogleFonts.montserrat(
  color: kWhiteColor,
);
TextStyle blueTextStyle = GoogleFonts.montserrat(
  color: kBlueColor,
);
TextStyle redTextStyle = GoogleFonts.montserrat(
  color: kRedColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
