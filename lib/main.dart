import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:topcoder/constants.dart';
import 'package:topcoder/theme/style.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(TopCoder()));
}

class TopCoder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppTheme.dark,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness:
            Platform.isAndroid ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: AppTheme.white,
        systemNavigationBarDividerColor: Colors.grey,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: ThemeData(
        primaryColor: AppTheme.primaryGreen,
        primaryColorLight: AppTheme.lightGreen,
        primaryColorDark: AppTheme.darkGreen,
        textTheme: AppTheme.textTheme,
        fontFamily: AppTheme.fontName,
        appBarTheme: AppTheme.appBarTheme,
        scaffoldBackgroundColor: AppTheme.primaryGreen,
      ),
      // initialRoute: kDefaultRoute,
      // onGenerateRoute: kGenerateRoutes,
    );
  }
}
