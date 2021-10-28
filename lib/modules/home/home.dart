import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:weather_app/modules/home/widgets/forecast_widget.dart';
import 'package:weather_app/modules/home/widgets/user_avatar.dart';
import 'package:weather_app/modules/search/search.dart';
import 'package:weather_app/modules/settings/setting.dart';
import 'package:weather_app/utils/constance.dart';
import 'package:weather_app/utils/theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //to keep track of active page
  int _selectedIndex = 0;

  //list of pages
  List<Widget> _pages = [Home(), Search(), Setting()];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
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
                  SizedBox(height: 15.h),
                  todayWidget(),
                  SizedBox(height: 15.h),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: DraggableScrollableSheet(
                minChildSize: 0.40,
                maxChildSize: 1.0,
                builder: (_, controller) {
                  return Material(
                    elevation: 1,
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.sp),
                      topRight: Radius.circular(12.sp),
                    ),
                    child: SingleChildScrollView(
                      controller: controller,
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
                        child: Column(
                          children: [
                            sheetDivider(),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Today",
                                  style: styleTxt(theme),
                                ),
                                Text(
                                  "Next 7 days >",
                                  style: styleTxt(theme),
                                ),
                              ],
                            ),
                            SizedBox(height: 30.h),
                            Container(
                              height: 110.h,
                              child: ListView.builder(
                                  itemCount: 7,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (_, index) {
                                    return ForecastWidget();
                                  }),
                            ),
                            SizedBox(height: 20.h),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.sp),
                              child: GNav(
                                // rippleColor: Colors.grey.shade700, onclick color
                                hoverColor: Colors.red.shade700,
                                haptic: true,
                                backgroundColor: theme.backgroundColor,
                                activeColor: Colors.blueGrey.withOpacity(0.5),
                                iconSize: 28.sp,
                                gap: 10,
                                curve: Curves.bounceInOut,
                                duration: const Duration(milliseconds: 400),
                                color: Colors.grey.withOpacity(0.5),
                                tabs: [
                                  GButton(
                                    icon: Entypo.home,
                                    text: "Home",
                                  ),
                                  GButton(
                                    icon: Entypo.search,
                                    text: "Search",
                                  ),
                                  GButton(
                                    icon: Icons.settings,
                                    text: "Settings",
                                  ),
                                ],
                                selectedIndex: _selectedIndex,
                                onTabChange: (index) {
                                  setState(() {
                                    _selectedIndex = index;
                                    if (index == 0) {
                                      //do nothing to avoid page rebuild
                                    } else {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) {
                                          return _pages[index];
                                        }),
                                      );
                                    }
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle styleTxt(ThemeData theme) {
    return TextStyle(
      fontFamily: ConstanceData.kohoRegular,
      color: theme.backgroundColor,
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
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

  Widget myDivider() {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Container(
        height: 45.h,
        color: kPrimaryColor,
        width: 1.w,
      ),
    );
  }

  Widget weatherInfo({title, value}) {
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

  Widget todayWidget() {
    return Center(
      child: Container(
        height: 200.h,
        width: 200.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ConstanceData.cloudy),
          ),
        ),
      ),
    );
  }
}
