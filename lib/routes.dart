import 'package:flutter/material.dart';
import 'package:topcoder/screens/screens.dart';

typedef MaterialPageRoute GenerateRoutes(RouteSettings settings);

MaterialPageRoute kGenerateRoutes(RouteSettings settings) {
  Map<String, WidgetBuilder> kAppRoutes = {
    SplashScreen.id: (context) => SplashScreen(),
  };

  WidgetBuilder builder = kAppRoutes[settings.name];

  return MaterialPageRoute(
    builder: (ctx) => builder(ctx),
  );
}

const String kDefaultRoute = SplashScreen.id;
