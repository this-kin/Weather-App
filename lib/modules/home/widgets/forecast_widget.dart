import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/utils/constance.dart';

class ForecastWidget extends StatelessWidget {
  const ForecastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.all(10.sp),
      child: Container(
        height: 110.h,
        width: 65.w,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15.sp),
        ),
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Column(
          children: [
            imageWidget(),
            SizedBox(height: 3.h),
            Text(
              "12 00",
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: ConstanceData.kohoRegular,
                color: theme.backgroundColor,
              ),
            ),
            Text(
              "33°C",
              style: TextStyle(
                fontSize: 15.sp,
                fontFamily: ConstanceData.kohoRegular,
                color: theme.backgroundColor,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container imageWidget() {
    return Container(
      height: 35.h,
      width: 50.w,
      child: Image.asset(ConstanceData.cloudy),
    );
  }
}
