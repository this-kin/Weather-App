import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/modules/home/home.dart';
import 'package:weather_app/utils/constance.dart';
import 'package:weather_app/utils/theme.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  "Daily",
                  style: kAppbarThin.copyWith(
                    fontFamily: ConstanceData.kohoRegular,
                  ),
                ),
                subtitle: Text(
                  "Weather",
                  style: kAppbarBold.copyWith(
                    fontFamily: ConstanceData.kohoBold,
                  ),
                ),
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  child: Lottie.asset(
                    ConstanceData.ladyUmberlla,
                    height: 500.h,
                    width: 350.w,
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  //google signin

                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Home();
                  }), (route) => false);
                },
                child: Center(
                  child: Container(
                    height: 65.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                        color: theme.primaryColor,
                        borderRadius: BorderRadius.circular(20.sp)),
                    child: Center(
                        child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontFamily: ConstanceData.kohoRegular,
                      ),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
