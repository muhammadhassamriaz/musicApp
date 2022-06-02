import 'package:flutter/material.dart';

class SlideUpTransparentRoute extends PageRouteBuilder {
  final Widget enterWidget;

  SlideUpTransparentRoute(
      {required this.enterWidget, required String routeName, Object? arguments})
      : super(
          settings: RouteSettings(name: routeName, arguments: arguments),
          transitionDuration: const Duration(milliseconds: 600),
          opaque: false,
          reverseTransitionDuration: const Duration(milliseconds: 600),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return enterWidget;
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.ease;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
}
