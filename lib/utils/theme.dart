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
      fontSize: 50.sp,
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
    ),
    headline2: TextStyle(
      color: Colors.white,
      fontSize: 18.sp,
      fontFamily: ConstanceData.kohoRegular,
    ),
  );

  static ThemeData themeData() {
    return ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
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



// TextStyle kAppbarThin = TextStyle(
//   fontSize: 25.sp,
//   color: kAccentColor,
//   fontFamily: "Koho",
// );
// TextStyle kAppbarBold = TextStyle(
//   fontSize: 30.sp,
//   color: kAccentColor,
//   fontFamily: "Koho Bold",
// );
