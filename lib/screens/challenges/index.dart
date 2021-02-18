import "package:flutter/material.dart";
import 'package:topcoder/theme/style.dart';

class ChallengesScreen extends StatelessWidget {
  static const String id = "challenge_index";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: SafeArea(
        child: Center(),
      ),
    );
  }
}
