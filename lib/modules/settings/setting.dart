import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:weather_app/utils/constance.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
          "Settings",
          style: TextStyle(
            color: theme.primaryColor,
            fontFamily: ConstanceData.kohoBold,
          ),
        ),
      ),
      backgroundColor: theme.backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                height: 50.h,
                child: ListTile(
                  leading: Icon(Icons.language),
                  title: Text("Language"),
                  subtitle: Text("English"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                height: 50.h,
                child: ListTile(
                  leading: Icon(Entypo.bell),
                  title: Text("Daily Notification"),
                  trailing: Switch(
                      activeColor: theme.primaryColor,
                      value: false,
                      onChanged: (val) {
                        //
                      }),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                height: 50.h,
                child: ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text("Change Location"),
                  subtitle: Text(
                    "Lagos NG",
                    style: theme.textTheme.caption!.copyWith(
                      color: theme.accentColor,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                height: 50.h,
                child: ListTile(
                  leading: Icon(Icons.report_problem_outlined),
                  title: Text("Report A Problem"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                height: 50.h,
                child: ListTile(
                  leading: Icon(Icons.logout_outlined),
                  title: Text("Logout"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
