import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:weather_app/modules/home/widgets/user_avatar.dart';
import 'package:weather_app/utils/constance.dart';
import 'package:weather_app/utils/theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Today, 15 Dec",
                  style: kAppbarThin.copyWith(
                    fontFamily: ConstanceData.kohoRegular,
                  ),
                ),
                subtitle: Text(
                  "Surakarta",
                  style: kAppbarBold.copyWith(
                    fontFamily: ConstanceData.kohoBold,
                  ),
                ),
                trailing: UserAvatar(
                  imageUrl: ConstanceData.man,
                ),
              ),
              SizedBox(height: 20.h),
              todayWidget(),
              SizedBox(height: 30.h),
              Center(
                child: GradientText(
                  "Cloudy",
                  gradient: Gradients.buildGradient(
                      Alignment.topLeft, Alignment.bottomCenter, [
                    theme.primaryColor.withOpacity(0.3),
                    theme.primaryColor,
                  ]),
                  shaderRect: Rect.fromLTRB(50, 30, 0, 0),
                  style: TextStyle(
                    fontSize: 50.sp,
                    color: theme.primaryColor,
                    fontFamily: ConstanceData.kohoBold,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Flexible(
                  child: Wrap(
                      spacing: 20.w,
                      alignment: WrapAlignment.center,
                      children: [
                    weatherInfo(title: "Wind", value: "234"),
                    myDivider(),
                    weatherInfo(title: "Temp", value: "30°C"),
                    myDivider(),
                    weatherInfo(title: "Humidity", value: "25%")
                  ]))
            ],
          ),
        ),
      ),
    );
  }

  myDivider() {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Container(
        height: 45.h,
        color: kPrimaryColor,
        width: 1.w,
      ),
    );
  }

  weatherInfo({title, value}) {
    return Column(
      children: [
        Text(
          title,
          style: kAppbarThin.copyWith(
            fontSize: 17.sp,
            color: kPrimaryColor,
          ),
        ),
        Text(
          value,
          style: kAppbarBold.copyWith(
            color: kPrimaryColor,
            fontSize: 32.sp,
          ),
        )
      ],
    );
  }

  Center todayWidget() {
    return Center(
      child: Container(
        height: 250.h,
        width: 250.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ConstanceData.cloudy),
          ),
        ),
      ),
    );
  }
}
