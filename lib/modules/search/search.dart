import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      ),
    );
  }
}
