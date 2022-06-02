import '../../package/route.dart';

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
