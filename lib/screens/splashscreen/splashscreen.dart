import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:topcoder/components/logo.dart';
import 'package:topcoder/theme/style.dart';

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

  // _toHomeScreen() {
  //   replaceWith(context, HomeScreen.id);
  // }

  // _toLoginScreen() {
  //   replaceWith(context, LoginScreen.id);
  // }

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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Logo(),
                        SizedBox(height: 16),
                        Text(
                          "TOPCODER",
                          style: GoogleFonts.barlowCondensed(
                            color: AppTheme.white,
                            fontSize: 32.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Center(
                  child: Text(
                    'Copyright ©${DateTime.now().year}',
                    style: AppTheme.body2,
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
