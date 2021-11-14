import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/modules/search/widgets/prefix_con.dart';
import 'package:weather_app/utils/constance.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        iconTheme: IconThemeData(color: Colors.transparent),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Search",
          style: TextStyle(
            color: theme.primaryColor,
            fontFamily: ConstanceData.kohoBold,
          ),
        ),
      ),
      backgroundColor: theme.backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Row(
              children: [
                PrefixCon(),
                SizedBox(width: 20.w),
                SearchBar(
                  theme: theme.textTheme,
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Divider(
              color: Colors.blueGrey.withOpacity(0.5),
            ),
            GestureDetector(
              onTap: () {
                //search location
              },
              child: Container(
                height: 50.h,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(
                      Icons.home_rounded,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(width: 15.w),
                    Text(
                      "Enter Home Address",
                      style: theme.textTheme.caption!.copyWith(
                        color: Colors.blueGrey,
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget SearchBar({TextTheme? theme}) {
    return Column(
      children: [
        Container(
          height: 50.h,
          width: 280.w,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
          ),
          alignment: Alignment.center,
          child: TextField(
            style: theme!.caption!.copyWith(color: Colors.grey),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
              hintText: "Lagos Nigeria",
              border: InputBorder.none,
              hintStyle: theme.caption!.copyWith(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          height: 50.h,
          width: 280.w,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
          ),
          alignment: Alignment.center,
          child: TextField(
            style: theme.caption!.copyWith(color: Colors.grey),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
              hintText: "Lagos Nigeria",
              border: InputBorder.none,
              hintStyle: theme.caption!.copyWith(color: Colors.grey),
            ),
          ),
        )
      ],
    );
  }
}
