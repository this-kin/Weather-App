import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/utils/constance.dart';

const Color kPrimaryColor = Color(0xff5A1BEE);
const Color kAccentColor = Color(0xff4B5988);
const Color kBackGroundColor = Color(0xffF4F7FE);

class CustomTheme {
  //light theme
  static TextTheme textTheme = TextTheme(
      bodyText1: TextStyle(
        fontSize: 30.sp,
        color: kAccentColor,
        fontFamily: ConstanceData.kohoBold,
      ),
      bodyText2: TextStyle(
        fontSize: 25.sp,
        color: kAccentColor,
        fontFamily: ConstanceData.kohoRegular,
      ),
      caption: TextStyle(
        fontFamily: ConstanceData.kohoRegular,
        color: Colors.white,
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
      ),
      button: TextStyle(
        fontFamily: ConstanceData.kohoRegular,
        color: kAccentColor,
        fontSize: 15.sp,
        fontWeight: FontWeight.w200,
      ));

  static ThemeData themeData() {
    return ThemeData(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: kBackGroundColor,
      scaffoldBackgroundColor: kBackGroundColor,
      primaryColor: kPrimaryColor,
      accentColor: kAccentColor,
      canvasColor: Colors.transparent,
      platform: TargetPlatform.iOS,
      textTheme: textTheme,
    );
  }
}

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
