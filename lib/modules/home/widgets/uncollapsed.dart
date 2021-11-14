import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/modules/more/more.dart';
import 'package:weather_app/utils/constance.dart';

class Uncollapsed extends StatefulWidget {
  const Uncollapsed({Key? key}) : super(key: key);

  @override
  _UncollapsedState createState() => _UncollapsedState();
}

class _UncollapsedState extends State<Uncollapsed> {
  //
  int _selectedDay = 0;

  //weather info
  List<String> weather = ["Temperature", "Wind", "Humidity"];

  //week day

  List<String> weekDays = ["Sun", "Mon", "Tue", "Wed", "Thu"];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
      child: Column(
        children: [
          sheetDivider(),
          SizedBox(height: 20.h),
          Wrap(
            spacing: 45.w,
            children: List.generate(
              weather.length,
              (index) => Text(
                weather[index],
                style: TextStyle(
                    color: index == 0 ? Colors.white : Colors.deepPurpleAccent,
                    fontFamily: ConstanceData.kohoRegular,
                    fontSize: 22.sp),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            height: 200.h,
            color: Colors.amberAccent,
          ),
          SizedBox(height: 20.h),
          Wrap(
            alignment: WrapAlignment.start,
            children: List.generate(
                weekDays.length,
                (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 35.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          color: _selectedDay == index
                              ? Colors.deepPurpleAccent
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(20.sp)),
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          weekDays[index],
                          style: TextStyle(
                            color: _selectedDay == index
                                ? theme.backgroundColor
                                : Colors.deepPurpleAccent,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    )),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Other City",
                style: TextStyle(
                  fontFamily: ConstanceData.kohoBold,
                  color: theme.backgroundColor,
                  fontSize: 20.sp,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => More()));
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 18.sp,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20.h),
          Container(
            height: 250.h,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (_, index) {
                  return Container(
                    height: 100.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget sheetDivider() {
    return Center(
      child: Container(
        height: 5.h,
        width: 50.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.sp),
          color: Colors.deepPurpleAccent.withOpacity(0.8),
        ),
      ),
    );
  }
}
