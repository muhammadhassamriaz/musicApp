import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:karaoke/module/view/sign_up.dart';
import 'package:karaoke/res/constants.dart';
import 'package:karaoke/res/globals.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "/splash_screen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      navigatorKey.currentState?.pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => SignUpScreen()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(Constants.MICSVG),
        ],
      ),
    );
  }
}
