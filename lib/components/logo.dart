import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:topcoder/constants.dart';
import 'package:topcoder/theme/style.dart';

class Logo extends StatelessWidget {
  final bool showText;
  final double fontSize;

  const Logo({this.showText = false, this.fontSize = 32.0});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Images.logo),
        ...(this.showText
            ? [
                SizedBox(height: 16),
                Text(
                  "TOPCODER",
                  style: GoogleFonts.barlowCondensed(
                    color: AppTheme.white,
                    fontSize: 32.0,
                  ),
                ),
              ]
            : []),
      ],
    );
  }
}
