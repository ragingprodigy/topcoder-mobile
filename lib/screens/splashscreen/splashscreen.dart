import 'dart:async';

import 'package:flutter/material.dart';
import 'package:preview/preview.dart';
import 'package:topcoder/components/logo.dart';
import 'package:topcoder/screens/challenges/index.dart';
import 'package:topcoder/theme/style.dart';
import 'package:topcoder/utils/uiHelpers.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), _toChallengeScreen);
  }

  // _toHomeScreen() {
  //   replaceWith(context, HomeScreen.id);
  // }

  _toChallengeScreen() {
    replaceWith(context, ChallengesScreen.id);
  }

  // _authStateListener(BuildContext context, AuthState state) {
  //   if (state is Authenticated) {
  //     Timer(Duration(seconds: 3), _toHomeScreen);
  //   }

  //   if (state is Unauthenticated) {
  //     controller = AnimationController(
  //       duration: Duration(
  //         seconds: 1,
  //       ),
  //       vsync: this,
  //       lowerBound: 0.5,
  //     )
  //       ..addStatusListener((AnimationStatus status) {
  //         if (AnimationStatus.completed == status) {
  //           controller.reverse();
  //         }

  //         if (AnimationStatus.dismissed == status) {
  //           controller.forward();
  //         }
  //       })
  //       ..addListener(() {
  //         setState(() {});
  //       });

  //     controller.forward();

  //     Timer(Duration(seconds: 5), _toLoginScreen);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dark,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Opacity(
                  opacity: 1,
                  child: Center(
                    child: Logo(
                      showText: true,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Center(
                  child: Text(
                    'Copyright ©${DateTime.now().year}',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: AppTheme.white,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetPreview extends PreviewProvider {
  @override
  List<Preview> get previews {
    return [
      Preview(
        frame: Frames.androidAuto,
        mode: UpdateMode.hotReload,
        child: SplashScreen(),
      ),
    ];
  }
}
