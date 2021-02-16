import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const MaterialColor primaryPalette = MaterialColor(_mainPrimary, <int, Color>{
    50: Color(0xFFE5E5E6),
    100: Color(0xFFBFBFBF),
    200: Color(0xFF959595),
    300: Color(0xFF6A6A6B),
    400: Color(0xFF4A4A4B),
    500: Color(_mainPrimary),
    600: Color(0xFF252526),
    700: Color(0xFF1F1F20),
    800: Color(0xFF19191A),
    900: Color(0xFF0F0F10),
  });
  static const int _mainPrimary = 0xFF2A2A2B;

  static const MaterialColor accentPalette = MaterialColor(_mainAccent, <int, Color>{
    100: Color(0xFF6767F0),
    200: Color(_mainAccent),
    400: Color(0xFF0000F1),
    700: Color(0xFF0000D7),
  });
  static const int _mainAccent = 0xFF3838EC;

  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color dark = Color(0xFF2A2A2B);
  static const Color darkAccent = Color(0xFF555555);

  static const Color darkGreen = Color(0xFF229174);
  static const Color primaryGreen = Color(0xFF43D7B0);
  static const Color secondaryGrren = Color(0xFF137D60);
  static const Color lightGreen = Color(0xFF0AB88A);
  static const Color primaryRed = Color(0xFFEF7A8D);
  static const Color primaryAmber = Color(0xFFFFCC01);

  static const Color iconGrey = Color(0xFFBBC5D2);
  static const Color background = white;

  static const Color textColor = Color(0xFF151516);
  static const Color mutedText = Color(0xFF737380);
  static const Color darkBlue = Color(0xFF16679a);
  static const Color blue = Color(0xFF2c95d7);
  static const Color textGrey = Color(0xFFAAAAAA);
  static const Color textWhite = Colors.white;

  static const String fontName = 'Tahoma';
  static const String headerFontName = 'Tahoma';

  static const AppBarTheme appBarTheme = AppBarTheme(
    brightness: Brightness.dark,
    color: darkGreen,
    actionsIconTheme: IconThemeData(
      color: white,
    ),
    iconTheme: IconThemeData(
      color: white,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: white,
        fontSize: 20.0,
      ),
    ),
  );

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText1: body2,
    bodyText2: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    // h4 -> display1
    fontFamily: headerFontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: textWhite,
  );

  static const TextStyle headline = TextStyle(
    // h5 -> headline
    fontFamily: headerFontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: textWhite,
  );

  static const TextStyle title = TextStyle(
    // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: textWhite,
  );

  static const TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: textColor,
  );

  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: white,
  );

  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: textColor,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: textWhite, // was lightText
  );

  static const BorderRadius hatchBackRadius = BorderRadius.only(
    topLeft: Radius.circular(8.0),
    bottomRight: Radius.circular(8.0),
    bottomLeft: Radius.circular(8.0),
    topRight: Radius.circular(54.0),
  );

  static const TextStyle appBarTextStyle = TextStyle(
    fontSize: 18,
    color: textColor,
    fontWeight: FontWeight.w700,
  );

  static LinearGradient darkToLightGreen = LinearGradient(
    colors: [
      darkGreen,
      lightGreen,
    ],
    stops: [0.05, 0.8],
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
  );

  static LinearGradient transparentToDarkGradient = LinearGradient(
    colors: [
      Colors.transparent,
      Colors.black87,
    ],
    stops: [0.05, 0.8],
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
  );

  static const Divider divider = Divider(
    height: 1,
    color: textGrey,
  );
}
