import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrefixCon extends StatelessWidget {
  const PrefixCon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 10.w,
            width: 10.h,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            height: 40.h,
            width: 2.w,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            height: 10.w,
            width: 10.h,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
