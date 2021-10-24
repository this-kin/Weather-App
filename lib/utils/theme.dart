import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color kPrimaryColor = Color(0xff5A1BEE);
const Color kAccentColor = Color(0xff4B5988);
const Color kBackGroundColor = Color(0xffF4F7FE);

ThemeData themeData = ThemeData(
  iconTheme: IconThemeData(color: Colors.white),
  backgroundColor: kBackGroundColor,
  primaryColor: kPrimaryColor,
  accentColor: kAccentColor,
  canvasColor: Colors.transparent,
);

const Duration kDuration = Duration(milliseconds: 300);

TextStyle kAppbarThin = TextStyle(
  fontSize: 25.sp,
  color: kAccentColor,
  fontFamily: "Koho",
);
TextStyle kAppbarBold = TextStyle(
  fontSize: 30.sp,
  color: kAccentColor,
  fontFamily: "Koho Bold",
);
