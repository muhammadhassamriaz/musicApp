import '../../package/route.dart';

class AppRoute {
  static Map<String, Widget Function(BuildContext)> route = {
    SplashScreen.id: (_) => const SplashScreen(),
  };

  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SplashScreen.id:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const SplashScreen(),
        );
    }
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => const SplashScreen(),
    );
  }
}
