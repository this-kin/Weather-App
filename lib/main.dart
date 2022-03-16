import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/modules/splash/splash.dart';
import 'package:weather_app/utils/routes.dart';
import 'package:weather_app/utils/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(ProviderScope(child: MyApp())),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
    return ScreenUtilInit(
      designSize: Size(375, 825),
      builder: () {
        return MaterialApp(
          title: "Weather App",
          debugShowCheckedModeBanner: false,
          home: Splash(),
          theme: CustomTheme.themeData(),
          onGenerateRoute: RouteGenerator.generateRoute,
        );
      },
    );
  }
}
