import 'package:flutter/material.dart';
import 'package:karaoke/res/color.dart';
import 'package:karaoke/res/constants.dart';

import '../package/route.dart';
import '../res/globals.dart';
import '../res/scroll_behavior.dart';
import '../utils/color_utils.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.APP_TITLE,
      theme: ThemeData(
        backgroundColor: WHITE_COLOR,
        fontFamily: Constants.FONT_FAMILY,
        primarySwatch: ColorUtils.createMaterialColor(PRIMARY_COLOR),
        primaryColor: PRIMARY_COLOR,
      ),
      builder: (context, child) {
        return scrollBehavior(context, child);
      },
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      routes: AppRoute.route,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
