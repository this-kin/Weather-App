import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/models/other_model.dart';
import 'package:weather_app/modules/more/more.dart';
import 'package:weather_app/utils/constance.dart';

class Uncollapsed extends StatefulWidget {
  const Uncollapsed({Key? key}) : super(key: key);

  @override
  _UncollapsedState createState() => _UncollapsedState();
}

class _UncollapsedState extends State<Uncollapsed> {
  List<Color> gradientColors = [
    Colors.deepPurpleAccent,
  ];

  //
  int _selectedDay = 0;

  //weather info
  List<String> weather = ["Temperature", "Wind", "Humidity"];

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
          SizedBox(height: 30.h),
          Container(
            height: 200.h,
            child: AspectRatio(
              aspectRatio: 1.7,
              child: LineChart(
                mainData(),
              ),
            ),
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
            height: 300.h,
            width: double.infinity,
            child: ListView.builder(
              itemCount: allOther.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 130.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(30.sp),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 15.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Location",
                                style: theme.textTheme.headline2!.copyWith(
                                  fontSize: 14.sp,
                                )),
                            SizedBox(height: 5.h),
                            Text(
                              allOther[index].city,
                              style: theme.textTheme.bodyText1!.copyWith(
                                color: theme.backgroundColor,
                                fontSize: 28.sp,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Wrap(
                              spacing: 15.w,
                              alignment: WrapAlignment.center,
                              children: [
                                weatherInfo(
                                    title: "Temp",
                                    value: allOther[index].minTemp,
                                    textTheme: theme.textTheme),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.h),
                                  child: Container(
                                    height: 25.h,
                                    width: 1.w,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                                weatherInfo(
                                    title: "Wind",
                                    value: allOther[index].wind,
                                    textTheme: theme.textTheme),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Container(
                                    height: 25.h,
                                    width: 1.w,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                                weatherInfo(
                                    title: "Temp",
                                    value: allOther[index].maxTemp,
                                    textTheme: theme.textTheme)
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 130.h,
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          allOther[index].image,
                          height: 100.h,
                          width: 100.w,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
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

  Widget weatherInfo({title, value, TextTheme? textTheme}) {
    return Column(
      children: [
        Text(title,
            style: textTheme!.headline2!.copyWith(
              fontSize: 14.sp,
            )),
        Text(
          value,
          style: textTheme.bodyText2!.copyWith(
            fontSize: 18.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.transparent,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.deepPurpleAccent,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 40,
          interval: 1.1,
          getTextStyles: (context, value) =>
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 17),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'Sun';
              case 2:
                return 'Mon';
              case 3:
                return 'Tue';
              case 4:
                return 'Wed';
              case 5:
                return 'Thur';
              case 6:
                return 'Fri';
              case 7:
                return 'Sat';
            }
            return '';
          },
          margin: 15,
        ),
        leftTitles: SideTitles(
          showTitles: false,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10°';
              case 3:
                return '30°';
              case 5:
                return '50°';
            }
            return '';
          },
          reservedSize: 40,
          margin: 20,
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d), width: 1),
      ),
      minX: 0,
      maxX: 9,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(1.5, 3),
            FlSpot(3.5, 5),
            FlSpot(5, 3),
            FlSpot(6.5, 4),
            FlSpot(8, 2.8),
            FlSpot(9, 3),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 2.5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            //applyCutOffY: true,
            //cutOffY: 100,
            gradientFrom: const Offset(100, 10),
            gradientTo: const Offset(100, 100),
            show: true,
            colors: [
              Colors.indigo.withOpacity(0.1),
              Colors.indigo,
            ],
          ),
        ),
      ],
    );
  }
}
