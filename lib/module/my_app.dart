import 'package:flutter/material.dart';
import 'package:karaoke/module/providers/data_provider.dart';
import 'package:karaoke/res/color.dart';
import 'package:karaoke/res/constants.dart';
import 'package:provider/provider.dart';
import '../package/route.dart';
import '../res/globals.dart';
import '../res/scroll_behavior.dart';
import '../utils/color_utils.dart';
import '../utils/default_size_handler.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataProvider>(
          create: (_) => DataProvider(),
        ),
      ],
      child: MaterialApp(
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
        home: DefaultSizeInit(
          builder: () => const SplashScreen(),
        ),
        // onGenerateRoute: AppRoute.onGenerateRoute,
      ),
    );
  }
}
